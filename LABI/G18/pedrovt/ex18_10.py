'''
Created on 06/04/2017

@author: Pedro
'''

import sqlite3 as sql
import sys

def main(argv):
    db = sql.connect(argv[1])
    
    result = db.execute("SELECT * FROM contacts")
    rows = result.fetchall()
    count = 0
    for row in rows:
        count = count + 1
        print row
    
    # Print number of contacts with a determined name
    numContacts = db.execute("SELECT count(id) from contacts where name ='Pedro'")
    
    db.close()
    print ("Listing %d contacts." %count)
    
main(sys.argv)