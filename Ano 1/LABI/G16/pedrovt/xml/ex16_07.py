from lxml import etree
import csv
import time
import psutil

# ex 16.7
# usage of xml info to change the output to the csv file
# não é um programa muito eficiente....

def main():
    # program is running
    print("File is being generated.")
    
    # Get xml info
    xml = etree.parse('conf.xml')
    root = xml.getroot()
    
    monitor_cpu = root.findall('./monitor/cpu')
    monitor_ram = root.findall('./monitor/ram')
    
    cpu = True if (monitor_cpu[0].attrib['active'] == 'true') else False
    ram = True if (monitor_ram[0].attrib['active'] == 'true') else False

    # File out
    fout = open ('ex16_07.csv', 'w')
    
    writer = csv.DictWriter(fout, fieldnames=['time', 'cpu', 'ram'], delimiter='|')
    writer.writeheader()

    # begin time
    tstart = time.time()
    tend = tstart + 10
     
    while time.time() < tend:
        if cpu and ram:
            #print("Doing cpu and ram")
            writer.writerow({'time': time.time(), 'cpu' : psutil.cpu_percent(interval=1), 'ram' : psutil.virtual_memory()[1]})
        elif cpu and not ram:
            #print("Doing cpu and not ram")
            writer.writerow({'time': time.time(), 'cpu' : psutil.cpu_percent(interval=1), 'ram' : 'N/A'})
        elif ram and not cpu:
            #print("Doing not cpu and ram")
            writer.writerow({'time': time.time(), 'cpu' : 'N/A', 'ram' : psutil.virtual_memory()[1]})

    fout.close()
    print("File created sucessfully.")
    
main()