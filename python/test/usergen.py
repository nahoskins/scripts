import sys



inputFile = open(sys.argv[1], 'r')
data = inputFile.readlines()

def nameMixer(first, last):
#take two names, output them together
    result = []
    #result.append(first[0]+'.'+last)
    #result.append(first+'.'+last[0])
    result.append(first[0]+last)
    result.append(first+last[0])
    result.append(first+last)
    #result.append(first+'.'+last)
    return result

def charCaser(word):
#take one word return different capitalisations
    results=[]
    results.append(str(word.lower()))
    #results.append(str(word[0].upper())+str(word[1:].lower()))
    #results.append(str(word.upper()))
    return results

def nameCaser(first, last):
#take two names
    results = []
    fnames = charCaser(first)
    lnames = charCaser(last)
    for first in fnames:
        for last in lnames:
            results+=(nameMixer(first,last))
            results+=(nameMixer(last,first))

    return results

def main(data):
    result = []
    for line in data:
        names = line.strip().split(' ')
        first = names[0]
        last = names[1]
        result.append(nameCaser(first,last))
    return result


result = main(data)
print(len(result))
print(len(result[0]))
print(int(len(result))*int(len(result[0])))
for names in result:
    for name in names:
        print(name)


