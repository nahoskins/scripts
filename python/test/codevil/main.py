import json
import subprocess
import nscan
import save

target = '192.168.43.219'
ports = '21,80,53,88,139'

def get_lab_network():
    targets = []
    for ip in range(201,254):
        targets.append('192.168.43.'+str(ip))
    return targets

def run():
    scan = nscan.scan(target, ports)
    print('from run')
    print(scan)
    save.scan(scan)
    return scan

lab = get_lab_network()
test=run()
