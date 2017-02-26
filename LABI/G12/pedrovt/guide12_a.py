#
# guide12_a.py
#
# Pedro Teixeira <pedro.teix@ua.pt>
# N. Mec 84715
# MIECT - DETI UA
#

#------------------------------------------------------------------------
# Values, variables and types

# Ex 12.4
def calcular(a,b):
    print("a+b= %s" % (a+b))
    print("a-b= %f" % (a-b))
    print("a*b= %f" % (a*b))
    print("a/b= %f" % (a/b))
    print("a//b= %f" % (a//b))
    print("a+b= %f" % (a%b))

print(calcular(5,4))
print(calcular(3.8, 4.9))
print(calcular (4.7, 9))
#print (calcular(3, 0))

#------------------------------------------------------------------------
# Strings

# Ex 12.5
c = "Programação orientada a objectos"
d = "Matemática Discreta"
e = 'MIECT'

print("Strings -----------------------------")
print(c.lower())
print(d.upper())
print(c.title())
print(e.find("E"))
print(e.find("Z"))
print(c.split("o"))
print(len(c))
print(c[3:9])

# Ex 12.6
curso1 = "Mestrado Integrado em Engenharia de Computadores e Telemática"
curso2 = "Mestrado Integrado em Engenharia Electrónica"
sigla1 = "MIEECT"
sigla2 = "MIECT"
vagas1 = 54
vagas2 = 99

print("%s (%s) | %d vagas" %(curso1, sigla1, vagas1))
print("%s (%s) | %d vagas" %(curso2, sigla2, vagas2))

f = str(vagas1)
g = float(f)

#------------------------------------------------------------------------
# Lists

# Ex 12.7
h = ['MIECT', "MIEET", "MEC", "MSI", "ALGA"]
print(h)
print(h[2:4])
print(h[2:9])

h.append('ISD')
del(h[3:5])             #Delete elements of a list
print(h)

# Ex 12.9
print(sys.argv)
h.append(str(sys.argv))
h.reverse()
print(h)

#------------------------------------------------------------------------
# Dictionaries
nome = {'84688': "Beatriz", "84689": "Miguel", '74387': "João"}

i=str(nome['84688'])
j=str(nome['74387'])

print(i,j)
#c=str(nome['84687'])

#------------------------------------------------------------------------
# Input

# Ex 12.11
frase = str(input("Introduza uma frase: "))
print(frase.upper())