import glob
import json
import os

from yaml import load, dump
try:
    from yaml import CLoader as Loader
except ImportError:
    from yaml import Loader

data = {}

def extract_yaml(filename):
    print("loading %s" % filename)
    content = ""
    start_detected = False
    with open(filename, 'r') as fp:
        for line in fp.readlines():
            if not start_detected and line.startswith("---"):
                start_detected = True
            elif start_detected and line.startswith("---"):
                break
            elif start_detected:
                content += line
    try:
        return load(content, Loader=Loader)
    except Exception as e:
        print("Error loading '%s': '%s'" % (filename, str(e)))
        print(content)
        return None


for cratefile in glob.glob("_crates/*.md"):
    ydata = extract_yaml(cratefile)
    if ydata is None:
        print("no data for '%s'" % cratefile)
        continue

    if 'crate' in ydata:
        crate = ydata['crate']

        if 'tags' in ydata and ydata['tags']:
            crate_tags = ydata['tags']
            for tag in crate_tags:
                if tag not in data:
                    data[tag] = []
                data[tag].append(crate)


script_dir=os.path.dirname(os.path.realpath(__file__))

with open(os.path.join(script_dir, "_data", 'tags.json'), 'w') as file:
    out = json.dumps(data, indent=4)
    print(out)
    file.write(out)
