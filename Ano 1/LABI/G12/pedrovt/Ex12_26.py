#
# Ex12_26.py
#
# Pedro Teixeira <pedro.teix@ua.pt>
# N. Mec 84715
# MIECT - DETI UA
#

# Reads lines until an empty line is given and gets its translation
def translator():
    sentence = "a"

    while (sentence != ""):
        sentence = str(input("Please enter a sentence: " ))

        if (sentence == ""):
            break

        else:
            sent = getTranslation(sentence)
            print(sent)

# Translates a String
def getTranslation(str):
    str = str.replace('r', '')
    str = str.replace('', '')
    str = str.replace('l', 'u')
    str = str.replace('L', 'U')

    return str

# Runs the program
translator()