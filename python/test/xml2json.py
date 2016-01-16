import xmltodict as x2d
import json

def parse (xml, ifile, ofile):
    inputfile = open('ifile','r')
    data = inputfile.readlines()

    data = x2d.parse(data)

    x = ''

    for i in data:
        x = x + i

    nikto = json.dumps(dict, indent=2, separators =(',',': '))
    output = open('ofile','w')
    output.write(data)
