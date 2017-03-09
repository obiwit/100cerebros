import sys

# Program to debug
# Program is not working properly on purpose

def main(argv):
    n = int(argv[1])
    for x in range(n/2): #xrange does not exist (Python3)
        if n % x != 0:
            print("False")
        print("True")

main(sys.argv)