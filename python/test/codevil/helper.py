import subprocess
import json
import xml.etree.ElementTree as etree

work = open('test','w')
s = subprocess.call
smb = open('smb-os-discovery.txt','r')

smblist = smb.readlines()

delineator = 'Nmap scan report for'

def fix_scan_text(fileList):
    newlist = []
    for i in range(10,len(fileList)):
        newlist.append(' '.join(fileList[i].split()))
    return newlist

def rnlines(list):
    while '' in list:
        list.remove('')
    return list

cleanlist = rnlines(fix_scan_text(smblist))

def splitt(scanlist):
    newlist=[]
    cutpoints=[]
    scan =[]
    for i,line in enumerate(scanlist):
        scan.append(line)
        if line.count(delineator):
            ip=(line[-14:])
            cutpoints.append(i)
    print(cutpoints)
    for i, line in enumerate(cutpoints):
        if i < len(cutpoints)-1:
            print("not end")
            newlist.append(scanlist[line:cutpoints[i+1]])
        else:
            print('end')
    return newlist
newlist = splitt(cleanlist)

def mkdir(dir):
    subprocess.call(['mkdir',dir])

def create_dir_ip(list_of_ips):
    for ip in list_of_ips:
        mkdir(ip)

