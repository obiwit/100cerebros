import json
import time
import psutil

# ex 16.5
# uso do json.dumps para escrever num ficheiro a lista data no formato json

def main():
    # program is running
    print("File is being generated.")

    # File out
    fout = open('ex16_05.json', 'w')

    # List with data to be written on the file
    data = []

    # gets the data
    tstart = time.time()
    tend = tstart + 10
    while time.time() < tend:
        temp = {'stats': {
            'time': time.time(), 'cpu': psutil.cpu_percent(interval=1), 'network': psutil.net_io_counters()[0]}
        }
        data.append(temp) # adds info in temp dictionary to list data

    # writes to file
    fout.write(json.dumps(data, indent = 4))
    fout.close()
    print("File created sucessfully.")

main()