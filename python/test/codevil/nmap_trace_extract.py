import xml.etree.ElementTree as etree
tree = etree.parse('wowser.xml')
root = tree.getroot()
hosts = root.findall('host')

output_file = open('nmap_edges.csv', 'w')
output_file.truncate()
output_file.write("Source,Target\n")

for i in hosts:
        trace = i.find('trace')
        if not (trace == None):
                hop_count = 0
                for hop in trace:
                        if hop_count == 0:
                                last_ip = hop.attrib['ipaddr']
                        else:
                                output_file.write(last_ip)
                                output_file.write(",")
                                output_file.write(hop.attrib['ipaddr'])
                                output_file.write("\n")
                                last_ip = hop.attrib['ipaddr']
                        hop_count = hop_count + 1
print "Done"

