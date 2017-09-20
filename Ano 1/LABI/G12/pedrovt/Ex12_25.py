#
# Ex12_25.py
#
# Pedro Teixeira <pedro.teix@ua.pt>
# N. Mec 84715
# MIECT - DETI UA
#

# Read number w/validation
def readNumber():
    value = -1

    while (value < 0):
        value = int(input("Please enter a positive integer: " ))

    return value

# Detects whether number n is prime or not
def isPrime(n):
    if n == 1:
        return False

    else:
        i = 2

        while (i < (n/2)) :
            if (n % i == 0):
                return False
            i += 1
        return True

# Prints the results
def printResult(num, is_prime):
    if is_prime:
        print("%d is prime" %num)
    else:
        print("%d is not prime" %num)

# Runs the program
num = readNumber()
printResult(num, isPrime(num))