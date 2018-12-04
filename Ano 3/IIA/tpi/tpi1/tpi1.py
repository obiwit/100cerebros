# Beatriz M Borges R
# 79857
# MIECT

from tree_search import *
from math import *

#generate all possible assignments
#of constants from 'lconsts' to the
#variables in 'lvars'
def assignments(lvars,lconsts):
    dict_list = []
    # for each lvar, we have to create lconsts entries
    for i in range(len(lconsts)**len(lvars)):
        # for each combination of all lconsts values for all but one lvars,
        # iterate through all possible lconsts values others for the first lvar,
        # then "increment" the second lvar and re-iterate, and so on, for all lvars
        lconsts_vals = [lconsts[int(i/len(lconsts)**j)%len(lconsts)] for j in range(len(lvars))]
        dict_list.append(dict([(lvars[i], lconsts_vals[i]) for i in range(len(lvars))]))
    return dict_list


class TSP(SearchDomain):
    def __init__(self,connections, coordinates):
        self.connections = connections
        self.coordinates = coordinates

    def actions(self,state):
        lvisited, current = state
        # if current city is final city, no further actions
        if current in lvisited:
            return []
        # return all possible actions (in alphabetical order), with the current
        # city as the starting point
        return sorted( \
            [(c1,c2) for (c1, c2, d) in self.connections if (current == c1 and c2 not in lvisited[1:])] + \
            [(c2,c1) for (c1, c2, d) in self.connections if (current == c2 and c1 not in lvisited[1:])])

    def result(self,state,action):
        c1, c2 = action
        lvisited, current = state
        if c1==current and c2 not in lvisited[1:]:
            return lvisited+[current], c2

    def cost(self, state, action):
        c1, c2 = action
        lvisited, current = state
        if c1==current and c2 not in lvisited[1:]:
            for (x1, x2, d) in self.connections:
                if (x1, x2) == (c1, c2) or (x2, x1) == (c1, c2):
                    return d

    def heuristic(self, state, goal_state):
        lvisited, current = state
        goal_lvisited, goal_current = goal_state
        # account for initial/final city if lvisited is empty
        if len(lvisited) == 0:
            lvisited = [current]
        remaining_cities = list(set(goal_lvisited) - set(lvisited))
        # if there are no remaining cities, calculate the straight-line distance
        # between the current and the final cities
        x_c, y_c = self.coordinates[current]
        x_g, y_g = self.coordinates[lvisited[0]]
        if len(remaining_cities) == 0:
            return hypot(x_g - x_c, y_g - y_c)
        # if the is one or more remaining cities, calculate the (minimum) distances
        # between one remaing and the current cities and between one remaing and
        # the final cities
        rc_distances = []
        goal_distances = []
        current_distances = []
        for i in range(len(remaining_cities)):
            x1, y1 = self.coordinates[remaining_cities[i]]
            for rc2 in remaining_cities[i+1:]:
                x2, y2 = self.coordinates[rc2]
                rc_distances.append(hypot(x1 - x2, y1 - y2))
            goal_distances.append(hypot(x1 - x_g, y1 - y_g))
            current_distances.append(hypot(x1 - x_c, y1 - y_c))
        rl = min(goal_distances)
        cr = min(current_distances)
        # return the heuristic for the two jumps if there is only 1 remaining city
        if len(remaining_cities) == 1:
            return cr+rl
        # return the 'normal' version of the heuristic if there are 2 or more
        # remaining cities
        r = min(rc_distances)
        return cr + (len(remaining_cities) - 1) * r + rl

    def satisfies(self,state,goal_state):
        lvisited, current = state
        goal_lvisited, goal_current = goal_state
        return current==goal_current and set(goal_lvisited).issubset(set(lvisited))

    def equivalent(self,state1,state2):
        lvisited1, current1 = state1
        lvisited2, current2 = state2
        return current1==current2 and set(lvisited1) == set(lvisited2)

class MyTree(SearchTree):

    # constructor
    def __init__(self, problem, strategy='breadth'):
        SearchTree.__init__(self, problem, strategy)
        self.open_nodes[0].arg3 = 0 # initialize root with cost 0

    # add new nodes to the list of open_nodes
    # according to the uniform cost search startegy
    def uniform_add_to_open(self,lnewnodes):
        # nodes are ordered by their cost
        self.open_nodes = sorted(self.open_nodes+list(lnewnodes), key=lambda n: n.arg3)

    # add new nodes to the list of open_nodes
    # according to the A* search startegy
    def astar_add_to_open(self,lnewnodes):
        # nodes are ordered by sum of their cost with their heuristic
        self.open_nodes = sorted(self.open_nodes+list(lnewnodes), key=lambda n: n.arg3 + n.arg4)

    # search for a solution
    def search2(self):
        self.tree_size = 1
        self.solution_cost = 0
        while self.open_nodes != []:
            node = self.open_nodes.pop(0)
            if self.problem.goal_test(node.state):
                self.solution_cost = node.arg3
                return self.get_path(node)
            lnewnodes = []
            for a in self.problem.domain.actions(node.state):
                newstate = self.problem.domain.result(node.state,a)
                lnewnodes += [SearchNode(newstate, node, \
                    node.arg3 + self.problem.domain.cost(node.state, a), \
                    self.problem.domain.heuristic(newstate, self.problem.goal))]
                self.tree_size += 1
            self.add_to_open(lnewnodes)
        return None


# two shortcuts to solve TSP problems

def formulateTSP(domain,initial,tovisit):
    return SearchProblem(domain, ([],initial), (tovisit,initial))

def solveTSP(p,strategy):
    t = MyTree(p,strategy)
    solution = t.search2()
    return [city for (lv,city) in solution], t.tree_size, t.solution_cost
