
from constraintsearch import *


def ownership_constraint(friend1, constraint1, friend2, constraint2):
    bike1, hat1 = constraint1
    bike2, hat2 = constraint2

    # cannot use own things
    if friend1 in [bike1, hat1]:
        return False
    if friend2 in [bike2, hat2]:
        return False

    # cannot have things from same friend
    if bike1 == hat1 or bike2 == hat2:
        return False

    # each friend only has one hat/bike
    if bike1 == bike2 or hat1 == hat2:
        return False

    return True

# people, hats and bicycles
amigos = ["Andre", "Bernardo", "Claudio"]

def make_constraint_graph():
    return { (X,Y): ownership_constraint for X in amigos for Y in amigos if X != Y}

def make_domains():
    return { amigo: [(bicicleta, chapeu) for bicicleta in amigos for chapeu in amigos]
                    for amigo in amigos}

cs = ConstraintSearch(make_domains(), make_constraint_graph())

print(cs.search())
