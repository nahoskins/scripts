import subprocess
import nmap

nm = nmap.PortScanner()
nma = nmap.PortScannerAsync()
#

class scanResult:
    def __init__(self):
        self.data = []
x = scanResult()

def scan(target,ports) :
    result = []
    def callback_result(host, scan_result):
        print('------------------')
        print(host)
        print(scan_result)
        result = scan_result
        return scan_result
    scan = nma.scan(hosts=target, arguments='-sP', callback=callback_result)
    while nma.still_scanning():
        print("Waiting ...")
        nma.wait(2)

    print('nscan scan result')
    print(scan)
    print(result)
    return scan



def fastwebscan(target) :
    nm.scan(hosts=target, arguments='-T4 --max_rtt_timeout 200ms --initial_rtt_timeout 150ms --min_hostgroup 512 --max_retries 0 -n -P0 -p80,443,8080')

def slowscan(target) :
    nm.scan(hosts=target, arguments='-sS -sU -T4 -A -v -PE -PP -PS21,22,23,25,80,113,31339 -PA80,113,443,10042 -PO --script all')
def pingscan(target) :
    nm.scan(hosts=target, arguments='-sP -PE -PP -PS21,23,25,80,113,31339 -PA80,113,443,10042 --source-port 53 -T4')
def traceroute(target) :
    nm.scan(hosts=target, arguments='-sP -PE -PS22,25,80 -PA21,23,80,3389 -PU -PO --traceroute')
def opsys(target) :
    print("Whoooooooooooo are you! WHO WHO! WHO WHO!")
    nm.scan(hosts=target, arguments='-O --fuzzy')
def quickscan(target) :
    print("Greased Lightning")
    nm.scan(hosts=target, arguments='-n -sP -sV -PE -PA -F')

