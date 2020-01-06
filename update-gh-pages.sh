#!/bin/sh

# This script is made to run in a GitHub action.

list=`alr list | cut -f1 -d' ' | grep -v 'Searching...'`

for crate in $list; do
    alr show --jekyll $crate > _crates/$crate.md
done

echo >> index.md
date >> index.md

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
