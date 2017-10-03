from lxml import etree
import time

def main():
    root = etree.Element("stats")
    for i in range(1,10):
        value = etree.SubElement(root,'value')
        value.set('time', str(int(time.time())))
        value.text = str(i)
        time.sleep(1)

    print(etree.tostring(root, xml_declaration=True, encoding="UTF-8", pretty_print=True))

main()