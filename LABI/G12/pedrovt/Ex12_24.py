#
# Ex12_24.py
#
# Pedro Teixeira <pedro.teix@ua.pt>
# N. Mec 84715
# MIECT - DETI UA
#

# Reads values, w/validation
def readNotes(j, message):
    values = []

    i = 1
    while i < j:
        value = -1
        test = message + str(i)

        while ((value < 0) or (value > 20)):
            value = float(input("Introduza a nota do %s: " %(test)))

        values.append(value)

        i += 1

    return values

# Reads values
notasMT = readNotes(5, "MT")
notasAP = readNotes(3, "AP")
notasP = readNotes(3, "P")

# Determines the final classification
mt = 0.1*notasMT[0] + 0.1*notasMT[1] + 0.1*notasMT[2] + 0.1*notasMT[3]
ap = 0.1*notasAP[0] + 0.1*notasAP[1]
p  = 0.15*notasP[0] + 0.25*notasP[1]

final = mt + ap + p

# Prints results
if final < 9.5 :
    message = "REPROVADO"

else:
    message = "Aprovado"

print("Nota final: %f valores| %s" %(final, message))