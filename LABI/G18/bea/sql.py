#encoding=utf-8

import sqlite3 as sql
import sys

def main(firstTime):#argv):
    db = sql.connect("supercalifragilisticexpialidocious.db")#":memory:")

    if (firstTime): # so corre da 1ra vez, cria as tabelas e poe as cenas la dentro
        db.execute("""CREATE TABLE contacts(
                        id INTEGER PRIMARY KEY AUTOINCREMENT,
                        name TEXT,
                        address TEXT,
                        phone INTEGER,
                        comp_id INTEGER
                    );""")
        db.execute("""INSERT INTO contacts(name, address, phone, comp_id)
                VALUES("João Ribeiro Fonseca", "Porto", 934875923, 1);""")
        db.execute("""INSERT INTO contacts(name, address, phone, comp_id)
                VALUES("Pedro Albuquerque Silva", "Faro", 932454349, 1);""")
        db.execute("""INSERT INTO contacts(name, address, phone, comp_id)
                VALUES("Maria Carreira Dinis", "Braga", 234958673, 2);""")
        db.execute("""INSERT INTO contacts(name, address, phone, comp_id)
                VALUES("Catarina Alexandra Rodrigo", "Aveiro City", 963343386, 3);""")

        db.execute("""CREATE TABLE companies(
                        id INTEGER PRIMARY KEY AUTOINCREMENT,
                        name TEXT,
                        address TEXT,
                        vatnumber INTEGER
                    );""")
        db.execute("""INSERT INTO companies(name, address, vatnumber)
                VALUES("MaxiPlano", "Aveiro City", 123123123123);""")
        db.execute("""INSERT INTO companies(name, address, vatnumber)
                VALUES("Luis Manuel & filhos", "Águeda", 54534343435);""")
        db.execute("""INSERT INTO companies(name, address, vatnumber)
                VALUES("ProDesign", "Porto", 54534343435);""")

        db.commit()



    result = db.execute("SELECT * FROM contacts")
    rows = result.fetchall()
    for row in rows:
        print row

    #db.execute("DROP TABLE contacts")
    db.close()

main(False)#sys.argv)
