#
# Modulo: cidades
#
# Implementacao de um dominio para planeamento de caminhos
# entre cidades usando para esse efeito o modulo tree_search
#
# (c) Luis Seabra Lopes, Introducao a Inteligencia Artificial, 2012/2013
#

import math
from tree_search import *

class Cidades(SearchDomain):
    def __init__(self,connections, coordinates):
        self.connections = connections
        self.coordinates = coordinates
    def actions(self, cidade):
        actlist = []
        for (C1,C2,D) in self.connections:
            if (C1==cidade):
                actlist += [(C1,C2)]
            elif (C2==cidade):
               actlist += [(C2,C1)]
        return actlist
    def result(self, cidade, action):
        C1, C2 = action
        if C1==cidade:
            return C2
    def cost(self, state, action):
        orig, dest = action

        if orig == state:
            for (C1, C2, D) in self.connections:
                if (C1==orig and C2 ==dest) or (C2==orig and C1==dest):
                   return D

        return None

    def heuristic(self, state, goal_state):
        # compute euclidian distance between the 2 cities
        x_orig, y_orig = self.coordinates[state]
        x_dest, y_dest = self.coordinates[goal_state]
        #return math.sqrt((x_orig - x_dest)**2 + (y_orig - y_dest)**2)
        return math.hypot(x_orig - x_dest, y_orig - y_dest)

cidades_portugal = Cidades(
                    # Ligacoes por estrada
                    [
                      ('Coimbra', 'Leiria', 73),
                      ('Aveiro', 'Agueda', 35),
                      ('Porto', 'Agueda', 79),
                      ('Agueda', 'Coimbra', 45),
                      ('Viseu', 'Agueda', 78),
                      ('Aveiro', 'Porto', 78),
                      ('Aveiro', 'Coimbra', 65),
                      ('Figueira', 'Aveiro', 77),
                      ('Braga', 'Porto', 57),
                      ('Viseu', 'Guarda', 75),
                      ('Viseu', 'Coimbra', 91),
                      ('Figueira', 'Coimbra', 52),
                      ('Leiria', 'Castelo Branco', 169),
                      ('Figueira', 'Leiria', 62),
                      ('Leiria', 'Santarem', 78),
                      ('Santarem', 'Lisboa', 82),
                      ('Santarem', 'Castelo Branco', 160),
                      ('Castelo Branco', 'Viseu', 174),
                      ('Santarem', 'Evora', 122),
                      ('Lisboa', 'Evora', 132),
                      ('Evora', 'Beja', 105),
                      ('Lisboa', 'Beja', 178),
                      ('Faro', 'Beja', 147),
                      # extra
                      ('Braga', 'Guimaraes', 25),
                      ('Porto', 'Guimaraes', 44),
                      ('Guarda', 'Covilha', 46),
                      ('Viseu', 'Covilha', 57),
                      ('Castelo Branco', 'Covilha', 62),
                      ('Guarda', 'Castelo Branco', 96),
                      ('Lamego','Guimaraes', 88),
                      ('Lamego','Viseu', 47),
                      ('Lamego','Guarda', 64),
                      ('Portalegre','Castelo Branco', 64),
                      ('Portalegre','Santarem', 157),
                      ('Portalegre','Evora', 194) ],

                    # Coordenadas das cidades:
                     { 'Aveiro': (41,215),
                       'Figueira': ( 24, 161),
                       'Coimbra': ( 60, 167),
                       'Agueda': ( 58, 208),
                       'Viseu': ( 104, 217),
                       'Braga': ( 61, 317),
                       'Porto': ( 45, 272),
                       'Lisboa': ( 0, 0),
                       'Santarem': ( 38, 59),
                       'Leiria': ( 28, 115),
                       'Castelo Branco': ( 140, 124),
                       'Guarda': ( 159, 204),
                       'Evora': (120, -10),
                       'Beja': (125, -110),
                       'Faro': (120, -250),
                       #extra
                       'Guimaraes': ( 71, 300),
                       'Covilha': ( 130, 175),
                       'Lamego' : (125,250),
                       'Portalegre': (130,170) }
                     )



# print(cidades_portugal.cost('Aveiro', ('Aveiro', 'Porto')))
# print(cidades_portugal.cost('Agueda', ('Agueda', 'Porto')))
# print(cidades_portugal.cost('Lisboa', ('Aveiro', 'Porto')))
# print(cidades_portugal.heuristic('Aveiro', 'Porto')) # 57.14017850864661

# Atalho para obter caminho de c1 para c2 usando strategy:
def search_path(c1,c2,strategy):
    my_prob = SearchProblem(cidades_portugal,c1,c2)
    my_tree = SearchTree(my_prob)
    my_tree.strategy = strategy
    return my_tree.search()

p = SearchProblem(cidades_portugal,'Braga','Faro')

search_types = ['breadth', 'depth', 'uniform', 'greedy', 'astar']
for search_type in search_types:
    t = SearchTree(p,search_type)
    path, depth, non_terminals, terminals, total_cost, average_node_depth = t.search()
    print("""{} search:
          \tPath: {}
          \tDepth: {}
          \tNumber of non-terminal nodes: {}
          \tNumber of terminal nodes: {}
          \tTotal cost: {}
          \tAverage node depth: {}\n""".format(search_type, path, depth, non_terminals, terminals, total_cost, average_node_depth)) # limit=4
