# Dada uma lista de pares, produzir um par com as listas dos
# primeiros e segundos elementos desses pares.
# separar ([( a1, b1), ... (an, bn)]) = ([a1, ... an], [b1, ... bn])
# def pair_grouping(pair_list, pair_groups =[[], []]):
# 	if pair_list == []:
# 		return (pair_groups[0], pair_groups[1])

# 	pair_groups[0] = pair_groups[0] + [pair_list[0][0]]
# 	pair_groups[1] = pair_groups[1] + [pair_list[0][1]]

# 	return pair_grouping(pair_list[1:], pair_groups)
def pair_grouping(pair_list):
	if pair_list == []:
		return [], []

	a, b = pair_list[0]
	la, lb = pair_grouping(pair_list[1:])

	return [a] + la, [b] + lb



# Dada uma lista l e um elemento x, retorna um par formado pela lista
# dos elementos de l diferentes de x e pelo numero de ocorrencias x em l.
# Exemplo:
# >>> removeeconta ( [ 1 , 6 , 2 , 5 , 5 , 2 , 5 , 2 ] , 2 )
# ( [ 1 , 6 , 5 , 5 , 5 ] , 3 )
def remove_count_elem(list, elem):
	if list == []:
		return ([], 0)

	rest_list, rest_count = remove_count_elem(list[1:], elem)

	if list[0] == elem:
		return rest_list, 1 + rest_count
	else:
		return [list[0]] + rest_list, rest_count


# Dada uma lista, retorna o numero de ocorrencias de cada elemento,
# na forma de uma lista de pares (elemento,contagem).
def count_elems(list):
	if list == []:
		return []

	rest_list, count = remove_count_elem(list, list[0])

	return [(list[0], count)] + count_elems(rest_list)



p = [(1, 9), (2, 8), (3, 7), (4, 6)]
print( "p de-pairing : " + str( pair_grouping(p) ) )
print( "removeeconta : " + str( remove_count_elem([1,6,2,5,5,2,5,2], 2) ) )
print( "contar elems : " + str( count_elems([1,6,2,5,5,2,5,2]) ) )
