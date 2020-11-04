import glob
import json
import os

from yaml import load, dump
try:
    from yaml import CLoader as Loader
except ImportError:
    from yaml import Loader

data = {}
data['nodes'] = []
data['links'] = []
nodes = []


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
        color= "#1f77b4" # default color
        crate = ydata['crate']

        # change group based on tags
        if 'tags' in ydata and ydata['tags']:
            if 'spark' in ydata['tags']:
                color = "purple"
            elif 'embedded' in ydata['tags']:
                color = "darkcyan"

        data['nodes'] += [{'id': crate, 'color': color}]
        nodes.append(crate)

for cratefile in glob.glob("_crates/*.md"):
    ydata = extract_yaml(cratefile)
    if ydata is None:
        print("no data for '%s'" % cratefile)
        continue

    if 'crate' in ydata:
        crate = ydata['crate']

        if 'dependencies' in ydata and ydata['dependencies']:
            for dep in ydata['dependencies']:
                if dep['crate'] in nodes:
                    data['links'] += [{'source': crate, 'target': dep['crate'], 'value': 1}]


script_dir=os.path.dirname(os.path.realpath(__file__))

with open(os.path.join(script_dir, 'deps_graph_data.json'), 'w') as file:
    out = json.dumps(data, indent=4)
    print(out)
    file.write(out)
