import sys

# equivalent of a swith statement in python
def f(op, x, y):
    return {
        "+": x + y,
        "-": x - y,
        "*": x * y,
        "/": x / y,
        "%": x % y,
        "^2":x * x
    }.get(op, "")

def main(argv):
    x = float(argv[1])
    op = argv[2]
    y = 1 # default value for y is needed for sad reasons :'(
    if (op != "^2"):
        y = float(argv[3])

    return f(op, x, y)

def usage():
    print("Usage: python calc.py number <+|-|*|/|%|^2> <number if op is not ^2>");
    sys.exit(-1)

def main(argv):
    # validate input
    if (len(argv) < 3):
        usage()
    elif((argv != "^2") & (len(argv) != 4)):
        usage()

    result = main(argv)

    if (result == ""):
        usage()

    print(result)
    sys.exit(0)

main(sys.argv)
