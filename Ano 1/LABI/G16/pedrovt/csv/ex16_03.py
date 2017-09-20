import csv
import random
import time
import psutil
import sys

# ex 16.3
# usage of psutils library to get cpu and network usage
# usage of time library to..... get time :D
# Dictwriter.writerow to write in csv file

def main():
    # program is running
    print("File is being generated.")

    # File out
    fout = open ('ex16_03.csv', 'w')

    writer = csv.DictWriter(fout, fieldnames=['time', 'cpu', 'net_usage'], delimiter='|')
    writer.writeheader()

    # begin time
    tstart = time.time()
    tend = tstart + 60 #slighty more effective, it saves us about 30 million cycles (it's about 20% faster)

    while time.time() < tend:
        writer.writerow({'time': time.time(), 'cpu' : psutil.cpu_percent(interval=1), 'net_usage' : psutil.net_io_counters()[0]})

    fout.close()
    print("File created sucessfully.")

main()