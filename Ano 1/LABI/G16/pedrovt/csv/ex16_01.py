import csv
import sys

def main(argv):
    if len(argv) < 2:
        path = input("Please insert the name of the file you wish to read: ")
        
    else :
        path = argv[1]
        
    csv_in = open(path, "r")
    reader = csv.DictReader(csv_in, delimiter=',')
    for row in reader:
        print(row)
        
    

# Run program 
main(sys.argv)