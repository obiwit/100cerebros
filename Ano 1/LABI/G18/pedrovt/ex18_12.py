'''
Created on 09/04/2017

@author: Pedro
'''

import sqlite3 as sql
import sys

def main(argv):
    db = sql.connect(argv[1])
    
    name = str(raw_input("Name? "))
    
    # if on the table contacts, instead of name we had firstname and surname columns
    # result = db.execute("SELECT * FROM contacts WHERE firstname LIKE ? OR middlename LIKE ? ", (name,))
    
    result = db.execute("SELECT email FROM contacts WHERE name LIKE ? ", (name,))
    rows = result.fetchall()
    
    count = 0
    for row in rows:
        count = count + 1
        print row
    
    print("Search finished. Found %d contacts. " %count)
    db.close()
    
main(sys.argv)