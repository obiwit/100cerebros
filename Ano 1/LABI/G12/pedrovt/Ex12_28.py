#
# Ex12_28.py
#
# Pedro Teixeira <pedro.teix@ua.pt>
# N. Mec 84715
# MIECT - DETI UA
#

import random

# Generates a random number, n, between [0, 100]
def getRandomNum ():
    return random.randint(0,100)

# Get user's guesses, g, until g=n. When g=n, prints number of guesses (score)
def getGuesses (n):
    guess = -1

    i = 0 # Number of guesses

    while (guess != n):
        guess = int(input("\nPlease enter a number: "))
        if (n < guess):
            print("Value %d is greater than the mystery number." %guess)
        if (n > guess):
            print("Value %d is lower than the mystery number." %guess)
        if (n == guess):
            print("Number %d found in %d attempts." %(guess, i))
        i += 1

# Runs the program
getGuesses(getRandomNum())