import math
import functools #so para usar reduce

# (Implementar na forma de uma expressao-lambda:)
# Dado um numero inteiro, retorna True caso o numero seja ımpar, e False
# caso contrario.
even = lambda x : x%2 != 0

# (Implementar na forma de uma expressao-lambda:)
# Dado um numero, retorna True casoo numero seja positivo, e False caso contrario.
positive = lambda x : x >= 0

# (Implementar na forma de uma expressao-lambda:)
# Dados dois numeros, x e y, retorna True caso |x| < |y|, e False caso contrario.
smaller_abs_val = lambda x, y : abs(x) < abs(y)

# (Implementar na forma de uma expressao-lambda:)
# Dado um par (x, y), representando coordenadas cartesianas de um ponto no
# plano XY, retorna um par (r, θ), correspondente as coordenadas polares do
# mesmo ponto.
cartesian_to_polar = lambda tuple : (math.sqrt(tuple[0]**2 + tuple[1]**2), math.atan(tuple[1]/tuple[0]))
# math.degrees() se quisermos passar de radianos para graus

# Dadas tres funcoes de duas entradas, f, g e h, retorna uma funcao de tres
# entradas, x, y e z, cujo resultado e dado por: h(f(x, y), g(y, z).
# def function_bonanza(f, g, h):
# 	return lambda x, y, z: h(f(x, y), g(y, z))

function_bonanza = lambda f, g, h: lambda x, y, z: h(f(x, y), g(y, z))


# Dada uma lista e uma funcao booleana unaria, retorna True caso a funcao tambem
# retorne True para todos os elementos da lista, e False caso contrario.
# ( Quantificador universal )

# REDUCE
# def true_for_all(lst, bool_func):
	# return functools.reduce(lambda r, h: bool_func(h) and r, lst, True)

# true_for_all = lambda lst, bool_func: functools.reduce(lambda r, h: bool_func(h) and r, lst, True)

# LIST COMPREHENSION
#true_for_all = lambda lst, bool_func: [e for e in lst if bool_func(e)] == lst
true_for_all = lambda lst, bool_func: [e for e in lst if not bool_func(e)] == []

# Dada uma lista e uma funcao booleana unaria, retorna True caso a funcao
# retorne True para pelo menos um dos elementos da lista, e False caso
# contrario. ( Quantificador existencial )
true_for_one_or_more = lambda lst, bool_func: [e for e in lst if bool_func(e)] != []

# Dadas duas listas, retorna True se todos os elementos da primeira lista
# tambem ocorrem na segunda, e False caso contrario. ( subconjunto )
same_elems = lambda lst1, lst2: [(x,y) for x in lst1 
									   for y in lst2
									   if x == y] = []
	

# Dada uma lista com pelo menos um elemento e uma relacao de ordem
# (ou seja, uma funcao booleana binaria usada para comparacao elemento
# a elemento), retorna o menor elemento da lista de acordo com essa
# relacao de ordem.
def smallest_elem(lst, smaller_than):
	if lst == []:
		return None

	if len(lst) == 1:
		return lst[0]

	x = smallest_elem(lst[1:], smaller_than)
	return lst[0] if smaller_than(lst[0], x) else x
 

# Dada uma lista com pelo menos um elemento e uma relacao de ordem,
# retorna um par contendo o menor elemento da lista, de acordo com
# essa relacao de ordem, e uma lista com os restantes elementos.
def smallest_and_rest(lst, smaller_than):
	smallest = smallest_elem(lst, smaller_than)
	return [smallest, [e for e in lst if e != smallest]]

# Dada uma lista com pelo menos dois elementos e uma relacao de ordem,
# retorna um triplo contendo os dois menores elementos da lista, de
# acordo com essa relacao de ordem, e uma lista com os restantes elementos.

# Dada uma lista de pares (x,y), representando coordenadas cartesianas
# de pontos no plano XY, produzir uma lista de pares (r, θ), correspondentes
# as coordenadas polares dos mesmos pontos.

# Dadas duas listas e uma relacao de ordem, e partindo do pressuposto de
# que essas listas estao ordenadas segundo essa relacao de ordem, retorna
# a juncao ordenada das listas de entrada, de acordo com a mesma relacao
# de ordem, mantendo eventuais repeticoes.

# Dada uma lista de listas e uma funcao, aplica a funcao a cada um dos
# elementos das listas, retornando a concatenacao das listas resultantes.
# conc_aplic([[ x11 ,..., x1n ],...,[ xm1 ,..., xmk]], f) 
# 	= [ f (x11 ),..., f (x1n ),..., f (xm1 ),..., f (xmk)]

# Dado um par de listas e uma funcao binaria, retorna uma lista com os
# resultados da aplicacao da funcao aos pares de elementos homologos das
# duas listas. Ou seja: aplic combin (([ a1 ,..., an ],[ b1 ,..., bn]), F)
# devolve [F(a1,b1 ),..., F(an,bn)] Caso as listas nao tenham o mesmo
# comprimento, retorna None.

# Dada uma lista de listas [[x11, ..., x1n], ..., [xm1, ..., xmk]], uma
# funcao e o seu elemento neutro, produzir a lista [y1, ..., yn] em que
# yi e a reducao de [xi1, ..., xin] atraves da funcao.

x = 5
y = 2
print("""Is {} even ? {}. Is {} even? {}.
	  """.format(x, even(x), y, even(y)))

x1 = 14
y1 = -12
x2 = 12
y2 = -20
print("""Is {} positive ? {}. Is {} positive? {}.
	  """.format(x1, positive(x1), y1, positive(y1)))

print("""Is {} smaller than {} in absolute value? {}. 
Is {} smaller than {} in absolute value? {}.
	  """.format(x1, y1, smaller_abs_val(x1, y1), 
	  			 x2, y2,  smaller_abs_val(x2, y2)))

x = 3
y = 4
r, theta = cartesian_to_polar((x, y))
print("""(x={}, y={}) in cartesian coordinates is (r={}, theta={} rad) in polar coordinates.
	  """.format(x, y, r, theta))

x = 1
y = 2
z = 3
print("""({} + {}) * ({} - {}) is {}.
	   """.format(x, y, y, z, function_bonanza(
		  	lambda a,b : a + b,
		  	lambda a,b : a - b,
		  	lambda a,b : a * b)(x,y,z)))


lst = [1, 2, 3, 4, 5]
print("""Are all elements of the list even? {}.    
Are all elements of the list positive? {}.
	  """.format(true_for_all(lst, even), true_for_all(lst, positive)))

print("""Smallest element in {} is {}. The biggest one is {}.
	   """.format(lst, 
	  		smallest_elem(lst, lambda x,y: x < y), 
	  		smallest_elem(lst, lambda x,y: x > y)))

smallest1, rest1 = smallest_and_rest(lst, lambda x,y: x < y)
smallest2, rest2 = smallest_and_rest(lst, lambda x,y: x > y)
print("""Smallest element in {} is {}, and the remaining elements are {}. The biggest element is {}, and the remaining elements are {}.
	  """.format(lst, smallest1, rest1, smallest2, rest2))
