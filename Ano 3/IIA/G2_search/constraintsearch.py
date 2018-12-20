# Pesquisa para resolucao de problemas de atribuicao
#
# Introducao a Inteligencia Artificial
# DETI / UA
#
# (c) Luis Seabra Lopes, 2012-2016
#


class ConstraintSearch:

    # domains é um dicionário com o domínio de cada variável;
    # constaints e' um dicionário com a restrição aplicável a cada aresta;
    def __init__(self,domains,constraints):
        self.domains = domains
        self.constraints = constraints


    def propagate_constraints(self, newdomains, edges):
        while edges != []:
            (v1, v2) = edges.pop(0)
            constraint = self.constraints[v1,v2]
            newvals = []
            for x in newdomains[v1]:
                # verficar se x pode continuar presente
                if any([constraint(v1,x,v2,y) for y in newdomains[v2]]):
                    newvals.append(x)
            # verificar se e necessario fazer propagacao
            if len(newvals)<len(newdomains[v1])
                more_edges = [e for e in self.constraints if e[1] == v1]
                edges += more_edges
                newdomains[v1] = newvals

    # domains é um dicionário com os domínios actuais
    # de cada variável
    # ( ver acetato "Pesquisa com propagacao de restricoes
    #   em problemas de atribuicao - algoritmo" )
    def search(self,domains=None):

        if domains==None:
            domains = self.domains

        # se alguma variavel tiver lista de valores vazia, falha
        if any([lv==[] for lv in domains.values()]):
            return None

        # se nenhuma variavel tiver mais do que um valor possivel, sucesso
        if all([len(lv)==1 for lv in list(domains.values())]):
            # se valores violam restricoes, falha
            # ( verificacao desnecessaria se for feita a propagacao
            #   de restricoes )

            # not needed if propagating constraints
            # for (var1,var2) in self.constraints:
            #     constraint = self.constraints[var1,var2]
            #     if not constraint(var1,domains[var1][0],var2,domains[var2][0]):
            #         return None

            return { v:lv[0] for (v,lv) in domains.items() }

        # continuação da pesquisa
        # ( falta fazer a propagacao de restricoes )
        for var in domains.keys():
            if len(domains[var])>1:
                for val in domains[var]:
                    newdomains = dict(domains)
                    newdomains[var] = [val]

                    # for other_var in [v for v in domains if v != var]:
                    #     #here
                    #     if val in newdomains[other_var]:
                    #         newdomais[other_var] = [v for v in newdomais[other_var] if v != val]
                    #     newdomais[other_var] = [other_val for other_val in newdomais[other_var]]

                    edges = [e for e in self.constraints if e[1] == var]
                    self.propagate_constraints(newdomains, edges)

                    solution = self.search(newdomains)
                    if solution != None:
                        return solution
        return None
