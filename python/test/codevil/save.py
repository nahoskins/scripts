import shelve


def save(item,data_type):
    data = shelve.open('data')
    print("Saving data...")
    print(item)
    data[data_type] = item

def scan(scan):
    save(scan,'nmapscan')
    print(scan)

