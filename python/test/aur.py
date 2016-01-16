from operator import itemgetter
import sys

def rawdata(raw):
    lraw = open(raw,'r')
    data = lraw.readlines()
    return data

def yaourt2dict(data):
    theresults = []
    result ={
            "name": '',
            'index': '',
            "package" : '',
            "vote":'',
            "description":'',
            "version":''
            }

    for i, line in enumerate(data):
        if i%2 ==0:
            split = (' '.join(line.strip().split('/')).split())
            result['index'] = split[0]
            result['package'] = split[1]
            result['title'] = split[2]
            vote = split[-1][1:-1]
            if vote.isdigit():
                result['vote'] = int(vote)
                result['version'] = ' '.join(split[3:-1])
            else:
                result['version'] = ' '.join(split[3:])
                result['vote'] = 0
        else:
            result['description'] = line.strip()
            theresults.append(result)
            result = {}
    return theresults

def sortdicts(dictlist):
    newlist = sorted(dictlist, key=itemgetter('vote'))
    #newlist = sorted(dictlist, key=lambda k: k['vote'], reverse = False)
    return newlist

def displayresults(results):
    for i in results:
        print("{0:30} {1:6} {2:4}: {3:140}".format(i['title'],i['index'],i['vote'],i['description']))
    return results

gamedata = rawdata(sys.argv[1])
test = yaourt2dict(gamedata)
sorted_test = displayresults(sortdicts(test))

