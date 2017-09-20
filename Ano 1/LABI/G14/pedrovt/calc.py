import sys

def getUsage():
    print ("Usage: calc.py number operation number (operation : + - * /)")
    sys.exit(1)

# Calculates result of arithmetic operation, given by op, between x and y and
# dictionary to make a switch....
def result(x, y, op):
    result = {
        "+": x + y,
        "-": x - y,
        "*": x * y,
        "/": x / y}
    return result.get(op, "")

# Returns result of the operation
def calc(argv):
    x  = float(argv[1])
    op = argv[2]
    y  = float(argv[3])
    return result(x, y, op)

def main(argv):
    if (len (argv) != 4): # validation (if given 3 args, len(argv) = 4 -- file name is argv[0])
        getUsage()

    res = calc(argv)
    if res == "":
        getUsage()
    else:
        print(res)
        sys.exit(0)

main(sys.argv)