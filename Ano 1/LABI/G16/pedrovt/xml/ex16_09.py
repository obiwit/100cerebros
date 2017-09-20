from lxml import etree
import time
import psutil

# Ex 16.9
# Por cada etree.Element podemos ter subelementos etree.SubElement, que podem ter conteúdo (element.text)

def main():
    # program is running
    print("File is being generated.")

    fout = open ("ex16_09.xml", 'wb')

    root = etree.Element("stats")
    for i in range(1,10):
        value = etree.SubElement(root,'value')
        value.set('time', str(int(time.time())))

        cpu = etree.SubElement(value, 'cpu')
        cpu.text=(str(int(psutil.cpu_percent(interval=1))))

        network = etree.SubElement(value, 'network')
        network.text=(str(int(psutil.net_io_counters()[0])))

        time.sleep(1)

    temp = etree.tostring(root, xml_declaration=True, encoding="UTF-8", pretty_print=True)
    #print(temp)

    fout.write(temp)
    fout.close()
    print("File created sucessfully.")

main()