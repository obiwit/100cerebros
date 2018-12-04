
# Guiao de representacao do conhecimento
# -- Redes semanticas
# 

# Classe Relation, com as seguintes classes derivadas:
#     - Subtype     - uma relacao de subtipo entre dois tipos
#     - Member      - uma relacao de pertenca de uma instancia a um tipo
#     - Association - uma associacao generica entre duas entidades
#     - Fluent      - uma associacao que so pode ter um valor em cada momento

class Relation:
    def __init__(self,e1,rel,e2):
        self.entity1 = e1
        self.name = rel
        self.entity2 = e2
    def __str__(self):
        return self.name + "(" + str(self.entity1) + "," + \
               str(self.entity2) + ")"
    def __repr__(self):
        return str(self)


class Subtype(Relation):
    def __init__(self,sub,super):
        Relation.__init__(self,sub,"subtype",super)

class Member(Relation):
    def __init__(self,obj,type):
        Relation.__init__(self,obj,"member",type)

class Association(Relation):
    def __init__(self,e1,assocname,e2):
        Relation.__init__(self,e1,assocname,e2)

class Fluent(Relation):
    def __init__(self,e1,fluentname,e2):
        Relation.__init__(self,e1,fluentname,e2)


# classe Declaration
# -- associa um utilizador a uma relacao por si inserida
#    na rede semantica
#
class Declaration:
    def __init__(self,user,rel,tick):
        self.user = user
        self.relation = rel
        self.tick = tick
    def __str__(self):
        return "decl(" + str(self.user) + "," \
                       + str(self.relation) + "," + str(self.tick) + ")"
    def __repr__(self):
        return str(self)

# classe SemanticNetwork
# -- composta por um conjunto de declaracoes
#    armazenado na forma de uma lista
#
class SemanticNetwork:
    def __init__(self,ldecl=[]):
        self.declarations = ldecl
        self.tick = 0
    def __str__(self):
        return my_list2string(self.declarations)
    def insert(self,user,relation):
        self.tick += len(relation.name) # simulated time
        self.declarations.append(Declaration(user,relation,self.tick))
    def insertEvent(self,user,relations):
        if relations==[]:
            return
        self.tick += len(relations[0].name) # simulated time
        for relation in relations:
            self.declarations += [Declaration(user,relation,self.tick)]
    def query_local(self,user=None,e1=None,relname=None,e2=None,tick=None):
        self.query_result = \
            [ d for d in self.declarations
                if (user==None or d.user==user)
                and (e1 == None or d.relation.entity1 == e1)
                and (relname == None or d.relation.name == relname)
                and (e2 == None or d.relation.entity2 == e2)
                and (tick == None or d.tick == tick) ]
        return self.query_result
    def show_query_result(self):
        for d in self.query_result:
            print(str(d))


# Funcao auxiliar para converter para cadeias de caracteres
# listas cujos elementos sejam convertiveis para
# cadeias de caracteres
def my_list2string(list):
   if list == []:
       return "[]"
   s = "[ " + str(list[0])
   for i in range(1,len(list)):
       s += ", " + str(list[i])
   return s + " ]"
    

