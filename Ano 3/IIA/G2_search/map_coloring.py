
from constraintsearch import *


def map_constraint(coutry1, color1, coutry2, color2):
    return color1!=color2

# a)
countries = {
    "A": "BDE",
    "B": "ACE",
    "C": "BDE",
    "D": "ACE",
    "E": "ABCD"
}
# b)
countries = {
    "A": "BDE",
    "B": "ACE",
    "C": "BDEF",
    "D": "ACEF",
    "E": "ABCDF",
    "F": "CDE"
}
# c)
countries = {
    "A": "BDEF",
    "B": "ACF",
    "C": "BDFG",
    "D": "ACEG",
    "E": "ADFG",
    "F": "ABCEG",
    "G": "CDEF"
}

def make_constraint_graph():
    return { (X,Y):map_constraint for X in countries for Y in countries[X]}

def make_domains():
    colors = "rgbyw"#[ i+1 for i in range(n) ]
    return { country: colors for country in countries }

cs = ConstraintSearch(make_domains(), make_constraint_graph())

print(cs.search())
