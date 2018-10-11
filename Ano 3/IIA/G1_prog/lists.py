# Dada uma lista, retorna o seu comprimento.
def list_length(lst):
	if lst == []:
		return 0

	return 1 + list_length(lst[1:])

# Dada uma lista de numeros, retorna a respectiva soma.
def list_sum(lst):
	if lst == []:
		return 0

	return lst[0] + list_sum(lst[1:])

# Dada uma lista e um elemento, verifica se o elemento ocorre na lista.
# Retorna um valor booleano.
def in_list(lst, elem):
	if lst == []: 
		return False
	elif lst[0] == elem:
		return True

	return in_list(lst[1:], elem)

# Dadas duas listas, retorna a sua concatenacao.
def list_concat(list1, list2):
	if list2 == []:
		return list1

	return list_concat(list1 + [list2[0]], list2[1:])

# Dada uma lista, retorna a sua inversa.

# def list_reverse(lst):
# 	return list_reverse_n(lst, len(lst))
# def list_reverse_n(lst, n):
# 	if n == 0:
# 		return lst
# 	temp = lst[-1:] + list_reverse_n(lst[:-1], n-1)
# 	return temp

# def list_reverse_v2(lst, l_aux=[]):
# 	if lst == []:
# 		return l_aux
# 	l_aux = lst[:1] + l_aux
# 	return list_reverse_v2(lst[1:], l_aux)

def list_reverse_v3(lst):
	if lst == []:
		return []
	return list_reverse_v3(lst[1:]) + [lst[0]]

# Dada uma lista, verifica se forma uma capicua, ou seja, se,
# quer se leia da esquerda para a direita ou vice-versa, se obtem
# a mesma sequencia de elementos.
def is_palindrome(lst):
	if len(lst) < 2:
		return True
	elif lst[0] != lst[-1]:
		return False

	return is_palindrome(lst[1:-1])


# Dada uma lista de listas, retorna a concatenacao dessas listas.
# def concat_lists(lists):
# 	if lists == []:
# 		return lists
# 	elif len(lists) == 1:
# 		return lists[0]
# 	lists[-2] = lists[-2] + lists[-1]
# 	return concat_lists(lists[:-1])

def concat_lists(lists):
	if lists == []:
		return lists

	return lists[0] + concat_lists(lists[1:])

# Dada uma lista, um elemento x e outro elemento y, retorna uma lista
# similar a lista de entrada, na qual x e substituido por y em todas
# as ocorrencias de x.
def list_replace(lst, x, y):
	if lst == []:
		return lst

	current_val = lst[0]
	if current_val == x:
		current_val = y

	return [current_val] + list_replace(lst[1:], x, y)

# Dadas duas listas ordenadas de numeros, calcular a uniao ordenada
# mantendo eventuais repeticoes.
def list_merge(list1, list2):
	if list1 == []:
		return list2
	if list2 == []:
		return list1

	if list2[0] > list1[0]:
		list1 = [list1[0]] + list_merge(list1[1:], [list2[0]])
	else:
		list1 = [list2[0]] + list1

	return list_merge(list1, list2[1:])

# Dado um conjunto, na forma de uma lista, retorna uma lista de listas
# que representa o conjunto de todos os subconjuntos do conjunto dado.
# def list_partitions(lst):
# 	if lst == []:
# 		return []

# 	return [ [lst[0]]+ list_partitions(lst[1:]) ] + list_partitions(lst[1:])


l5 = [1, 2, 3, 4, 5]
l6 = [6, 7]
lp = [1, 2, 3, 2, 1]
print("l5 length : " + str(list_length(l5)))
print("l5 sum    : " + str(list_sum(l5)))
print("is 1 in l5: " + str(in_list(l5,1)))
print("is 6 in l5: " + str(in_list(l5,6)))
print("l5 + l6   : " + str(list_concat(l5,l6)))
# print("l5 reverse: " + str(list_reverse(l5)))
# print("l6 reverse: " + str(list_reverse_v2(l6)))
print("l5 reverse: " + str(list_reverse_v3(l5)))
print("l5 palindr: " + str(is_palindrome(l5)))
print("lp palindr: " + str(is_palindrome(lp)))
print("[l5,l6,lp]: " + str(concat_lists([lp, l5, l6])))
print("[l5, l6]  : " + str(concat_lists([l5, l6])))

print("l5 replace: " + str( list_replace(lp, 2, 7)) )
print("1-3 + 1-5 : " + str( list_merge(l5, lp[:3])) )
# print("partitions: " + str( list_partitions(l5)) )