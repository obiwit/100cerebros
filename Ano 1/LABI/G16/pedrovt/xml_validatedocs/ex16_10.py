from lxml import etree

# ex 16.10
# usage of etree.RelaxNG(schema) to validat a xml file based on its schema

def main():
    doc = etree.parse('playlist.xspf')
    schema = etree.parse('xspf-draft8.rng.xml')
    validator = etree.RelaxNG(schema)

    print(validator.validate(doc))
    print(validator.error_log.last_error)

main()