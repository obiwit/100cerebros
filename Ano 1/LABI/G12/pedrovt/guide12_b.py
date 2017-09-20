# encoding=utf-8

#
# guide12_b.py
#
# Pedro Teixeira <pedro.teix@ua.pt>
# N. Mec 84715
# MIECT - DETI UA
#

#------------------------------------------------------------------------
# Imports
import sys
import os.path

#------------------------------------------------------------------------
# Conditional instructions

# Ex 12.12
ano = int(input("Introduza um ano: "))
if (ano %4 == 0 and ano % 100 !=0) or ano % 400 == 0 :
    print("O ano %d é bissexto" %(ano))
else:
    print("O ano %d não é bissexto" %(ano))

#------------------------------------------------------------------------
# Repeating Instructions

v=0
for i in range(0, 10):
    v=i+v
    print(v)

#------------------------
# Ex 12.14
def f(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return f(n-1)+f(n-2)

def fibonnaci(n):
    fib = []
    i = 0

    for i in range (n):
        fib.append(f(i+1))
        i += 1

    print(fib)

fibonnaci(1)
fibonnaci(10)
fibonnaci(12)

#------------------------
# Ex 12.15
curso1 = "Mestrado Integrado em Engenharia de Computadores e Telemática"
curso2 = "Mestrado Integrado em Engenharia Electrónica"

count = 0
for j in curso1:
    count = count+1
print(count)

#------------------------
# Ex 12.16
g = curso1.split()
print(g)
count1 = 0
for j in g:
    count1 = count1+1
print(count1)

#------------------------
# Ex 12.17

end = len(curso1) - 1
j = 0
new_str = ""

for i in range (0, len(curso1)):
    new_str += curso1[end-i]

print(new_str)

#------------------------
# Ex 12.19

def fact(n):
    fact = 1
    i = 1

    while (i <= n):
        fact *= i
        i += 1

    print(fact)

fact(0)
fact(5)
fact(10)
fact(20)

#------------------------------------------------------------------------
# Methods
def pares(a, b):
    c = 0
    i = a
    while i < b:
        if i % 2 == 0:
            c = c + 1
        i = i + 1
    return c

print(pares(8,20))

#------------------------------------------------------------------------
# Files
path = str(input("Introduza o nome do ficheiro: "))
if not os.path.exists(path):
    sys.exit("Não existe")
if os.path.isdir(path):
    sys.exit("É diretório")
if not os.path.isfile(path):
    sys.exit("Não é ficheiro")

w = open(path, "r")

while True:
    line = w.readline()
    if line == '':
        break
    print(line)

w.close()