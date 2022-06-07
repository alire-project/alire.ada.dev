#!/bin/sh

# This script is made to run in a GitHub action.

if [ "x${DOC_BRANCH:-}" == "x" ]; then
    DOC_BRANCH="release/1.2"
fi

# First print the list of crates so that it is visible in the logs
alr --no-tty search --crates

alr_version=$(alr --no-tty version | grep "alr version" | cut -d: -f2 | tr -d '[:blank:]')
alire_lib_version=$(alr --no-tty version | grep "libalire version" | cut -d: -f2 | tr -d '[:blank:]')
index_branch=$(alr --no-tty version | grep "community index branch" | cut -d: -f2 | tr -d '[:blank:]')
echo "From community branch \`${index_branch}\`."
echo "Alr \`${alr_version}\`."
echo "Alire Library \`${alire_lib_version}\`."

# Get the list of crates
list=`alr --no-tty search --crates | cut -f1 -d' ' | grep -v 'Searching...'`

if [ -z "$list" ]; then
    echo "error: The list of crate is empty"
    exit 1
fi

echo "List of crates:"
echo $list
echo "---------------"

for crate in $list; do

    # Create a crate page
    alr --no-tty show --jekyll $crate > _crates/$crate.md

    # Extract the last version of the crate
    version=`cat _crates/$crate.md | grep 'version:' | head -1 | cut -d':' -f2`

    # Crate a badge json template for the crate
    cat > _badges/$crate.json <<EOF
---
layout: badge
crate: "$crate"
version: $version
---
EOF

done

# Create update.yml with data for index.md and crates.md
cat >_data/update.yml <<EOF-update
index_branch:      "${index_branch}"
alr_version:       "${alr_version}"
alire_lib_version: "${alire_lib_version}"
date:              "$(date)"
EOF-update

echo "Getting doc from Alire repo branch ${DOC_BRANCH}"
# Download the Alire repository
git clone --depth=1 --single-branch --branch ${DOC_BRANCH} https://github.com/alire-project/alire.git

# Copy the doc content
cp alire/doc/* docs/

# Append the built-ins config doc generated from the tool
alr --no-tty config --builtins-doc >> docs/configuration.md

# Cleanup alire repo
rm -rf alire/

# Generate dependency graph data
python dependency_graph.py

# Remove the ignore files to be able to commit crates and badges to the branch
rm -f _crates/.gitignore _badges/.gitignore

# deploy script based on https://github.com/peaceiris/actions-gh-pages

remote_repo="https://x-access-token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"
remote_branch="gh-pages"
local_dir="${HOME}/$(tr -cd 'a-f0-9' < /dev/urandom | head -c 32)"
PUBLISH_DIR="."

git clone --depth=1 --single-branch --branch "${remote_branch}" "${remote_repo}" "${local_dir}"
cd "${local_dir}"
git rm -r '*'
find "${GITHUB_WORKSPACE}/${PUBLISH_DIR}" -maxdepth 1 | \
        tail -n +2 | \
        xargs -I % cp -rf % "${local_dir}/"

# push to publishing branch
git config user.name "${GITHUB_ACTOR}"
git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"
git remote rm origin || true
git remote add origin "${remote_repo}"
git add --all
git commit --allow-empty --amend -m "Automated deployment: $(date -u) ${GITHUB_SHA}"
git checkout -b to_publish
git push -f origin "to_publish:${remote_branch}"
