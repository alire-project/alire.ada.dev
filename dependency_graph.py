import yaml
import glob
import json

data = {}
data['nodes'] = []
data['links'] = []
nodes = []

for cratefile in glob.glob("_crates/*.md"):
    with open(cratefile, 'r') as fp:
        for line in fp.readlines():
            if line.startswith('crate'):
                y = yaml.load(line, Loader=yaml.FullLoader)
                crate = y['crate']
                data['nodes'] += [{'id': crate, 'group':1}]
                nodes.append(crate)

for cratefile in glob.glob("_crates/*.md"):
    with open(cratefile, 'r') as fp:
        for line in fp.readlines():
            if line.startswith('crate'):
                y = yaml.load(line, Loader=yaml.FullLoader)
                crate = y['crate']

            if line.startswith('dependencies'):
                y = yaml.load(line, Loader=yaml.FullLoader)


                if y['dependencies']:
                    for dep in y['dependencies']:
                        if dep['crate'] in nodes:
                            data['links'] += [{'source': crate, 'target': dep['crate'], 'value': 1}]

print(json.dumps(data, indent=4))
