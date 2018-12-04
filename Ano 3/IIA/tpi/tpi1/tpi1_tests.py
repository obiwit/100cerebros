

from tree_search import *

from math import *

from tpi1 import *

                    
CONNECTIONS = [  # Road connections (bi-directional) between Portuguese cities
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
                 ('Portalegre','Evora', 194) ]

                    
COORDINATES =  {  # City coordinates
                  'Aveiro': (41,215),
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
                  'Guimaraes': ( 71, 300),
                  'Covilha': ( 130, 175),
                  'Lamego' : (125,250),
                  'Portalegre': (130,170) }

 
class Cidades(SearchDomain):
    def __init__(self,connections, coordinates):
        self.connections = connections
        self.coordinates = coordinates
    def actions(self,state):
        actlist = []
        for (C1,C2,D) in self.connections:
            if (C1==state):
                actlist += [(C1,C2)]
            elif (C2==state):
               actlist += [(C2,C1)]
        return actlist 
    def result(self,state,action):
        (C1,C2) = action
        if C1==state:
            return C2
    def cost(self, state, action):
        (C1,C2) = action
        if C1==state:
            for (X1,X2,D) in self.connections:
                if (X1,X2)==(C1,C2) or (X2,X1)==(C1,C2):
                    return D
    def heuristic(self, state, goal_state):
        (x1,y1) = self.coordinates[state]
        (x2,y2) = self.coordinates[goal_state]
        return sqrt((x1-x2)**2 + (y1-y2)**2)
    def satisfies(self,state,goal):
        return goal==state
    def equivalent(self,state1,state2):
        return state1==state2


cidades_portugal = Cidades( CONNECTIONS, COORDINATES )


p = SearchProblem(cidades_portugal,'Beja','Viseu')

t1 = MyTree(p,'breadth')
print('breadth:',t1.search2())
print(t1.tree_size,t1.solution_cost)
print()

t2 = MyTree(p,'uniform')
print('uniform:',t2.search2())
print(t2.tree_size,t2.solution_cost)
print()

t3 = MyTree(p,'astar')
print('astar:',t3.search2())
print(t3.tree_size,t3.solution_cost)
print()

print()

print('assignments:',assignments(['X','Y'],['a','b','c']))
print()


tsp_portugal = TSP( CONNECTIONS, COORDINATES )

print('actions:',tsp_portugal.actions((['Aveiro'],'Porto')))
print('result:',tsp_portugal.result((['Aveiro'],'Porto'),('Porto','Braga')))
print('cost:',tsp_portugal.cost((['Aveiro'],'Porto'),('Porto','Braga')))
print('actions:',tsp_portugal.actions((['Aveiro','Porto'],'Aveiro')))
print('actions:',tsp_portugal.actions((['Aveiro','Porto'],'Agueda')))
print('heuristic:',tsp_portugal.heuristic(([],'Porto'),(['Coimbra','Viseu'],'Porto')))
print('equivalent:',tsp_portugal.equivalent( (['Porto','Aveiro','Agueda'],'Coimbra'), (['Porto','Agueda','Aveiro'],'Coimbra') ))
print('satisfies:',tsp_portugal.satisfies( (['Porto','Aveiro','Coimbra','Agueda'],'Porto'), (['Porto','Coimbra'],'Porto') ))
print()
print()


p = formulateTSP(tsp_portugal,'Porto', ['Agueda','Aveiro','Guimaraes','Viseu'])
print('breadth:',solveTSP(p,'breadth'))
print()

q = formulateTSP(tsp_portugal,'Porto',['Aveiro','Guimaraes','Viseu'])
print('uniform:',solveTSP(q,'uniform'))
print()

r = formulateTSP(tsp_portugal,'Porto',['Evora','Aveiro','Santarem','Viseu'])
print('astar:  ',solveTSP(r,'astar'))
print()


