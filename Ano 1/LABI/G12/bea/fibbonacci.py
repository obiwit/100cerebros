#12.14##########################################################################

def fibbonacci(N):
    fib = [1,1]
    for i in range(N-2):
        fib.append(fib[0+i] + fib[1+i])
    return fib

print(fibbonacci(1))
print(fibbonacci(10))

print("\n")

#12.15##########################################################################

def howManyDigs(phrase):
    counter = 0
    for char in phrase:
        if(char.isdigit()):
            counter += 1
    return counter

print(howManyDigs("O departamento de Electronica tem 40 anos."))
print(howManyDigs("Portugal existe desde 1143."))

print("\n")

#12.16##########################################################################

def howManyWords(phrase):
    return len(phrase.split(" "))

print(howManyWords("O departamento de Electronica tem 40 anos."))
print(howManyWords("Portugal existe desde 1143."))

print("\n")

#12.17##########################################################################

def invertString(phrase):
    lenPhrase = len(phrase)-1
    string = phrase[lenPhrase]
    for i in range(1,lenPhrase+1):
        string += phrase[lenPhrase-i]
    return string

print(invertString("O departamento de Electronica tem 40 anos."))
print(invertString("Portugal existe desde 1143."))

print("\n")

#12.19##########################################################################

def factorial(num):
    fact = 1;
    while(num > 0):
        fact *= num
        num -= 1
    return fact

print(factorial(1))
print(factorial(4))
print(factorial(5))
