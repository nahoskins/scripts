import shelve

def save(item,data_type):
    data = shelve.open('data')
    print("Saving data...")
    print(item)
    data[data_type] = item

def dump():
    data = shelve.open('data')
    return data

def load(item, data_type):
    data = shelve.open('data')
    return data[data_type][item]
