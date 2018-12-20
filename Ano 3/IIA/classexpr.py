

class Expr:
    pass

class Const(Expr):

    def __init__(self,val):
        self.val = val

    def aval(self,varval=0):
        return self.val

class Var(Expr):

    def aval(self,varval):
        return varval

class Soma(Expr):

    def __init__(self,expr1,expr2):
        self.arg1 = expr1
        self.arg2 = expr2

    def aval(self,varval):
        return self.arg1.aval(varval) + self.arg2.aval(varval)


# Exemplos:

x = Const(2)
y = Var()
z = Soma(x,y)


