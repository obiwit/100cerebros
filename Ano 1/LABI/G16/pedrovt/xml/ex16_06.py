from lxml import etree

# ex 16.6
# usage of lxml library and etree to get conf.xml file content

def main():
    xml = etree.parse('conf.xml')
    root = xml.getroot()
    print(root.tag)
    for child in root:
        for child in child:
            print(child.tag, child.attrib, child.text)

main()