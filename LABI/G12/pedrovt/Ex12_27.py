#
# Ex12_27.py
#
# Pedro Teixeira <pedro.teix@ua.pt>
# N. Mec 84715
# MIECT - DETI UA
#

# Reads a list of numbers until n=0
def readValues ():
    values = [] # Not mandatory, variable sum and a counter variable would be enough
    sum = 0

    value = -1
    while (value != 0):
        value = int(input("Please enter a number: "))

        if (value == 0):
            break

        else:
            values.append(value)
            sum += value

    printStats(sum, getAverage(values, sum))

# Gets average
def getAverage (data, sum):
    av = ""

    if len(data) == 0:
        av = "Not possible"

    else :
        av = str(sum/len(data))

    return av

# Prints sum and average
def printStats (sum, average):
    print("Sum of the entered numbers= %d\nAverage of the entered numbers= %s" %(sum, str(average)))

# Runs the program
readValues()