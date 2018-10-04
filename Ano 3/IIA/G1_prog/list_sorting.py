######################################################################################
# From lambda.py
######################################################################################

def smallest_elem(lst, smaller_than):
	if lst == []:
		return None

	if len(lst) == 1:
		return lst[0]

	x = smallest_elem(lst[1:], smaller_than)
	return lst[0] if smaller_than(lst[0], x) else x

def smallest_and_rest(lst, smaller_than):
	smallest = smallest_elem(lst, smaller_than)
	return [smallest, [e for e in lst if e != smallest]]

######################################################################################
######################################################################################
######################################################################################

# Dada uma lista de numeros, calcular a lista ordenada pelos seguintes algoritmos:
# 	(a) Ordenacao por seleccao (selection sort);
def numeric_sel_sort(lst):
	# find min (after shifting index) and put it at the start
	if lst == []:
		return []

	smallest, rest = smallest_and_rest(lst, lambda x,y: x < y)
	return [smallest] + sel_sort(rest)

# 	(b) Ordenacao por borbulhamento (bubble sort);
def numeric_one_bubble_pass(lst):
	if len(lst) <= 1:
		return lst

	if lst[1] < lst[0]:
		aux = lst[0]
		lst[0] = lst[1]
		lst[1] = aux

	tail_sorted_list = one_bubble_pass(lst[1:])

	return [lst[0]] + tail_sorted_list

def numeric_bubble_sort(lst):
	# pair swap until shifting index
	if lst == []:
		return []

	lst = one_bubble_pass(lst)
	return bubble_sort(lst[:-1]) + [lst[-1]]

# 	(c) Ordenacao rapida (quick sort)
def numeric_quick_sort(lst):
	# ...
	return lst


# Similar ao numero anterior, mas sem restricao no tipo dos elementos da
# lista de entrada. A funcao de ordenacao recebe, num parametro adicional,
# a relacao de ordem (uma funcao binaria booleana para comparacao elemento
# a elemento) segundo a qual a lista de entrada deve ser ordenada.
# 	(a) Ordenacao por seleccao (selection sort);
def sel_sort(lst, smaller_than):
	# find min (after shifting index) and put it at the start
	if lst == []:
		return []

	smallest, rest = smallest_and_rest(lst, smaller_than)
	return [smallest] + sel_sort(rest, smaller_than)

# 	(b) Ordenacao por borbulhamento (bubble sort);
def one_bubble_pass(lst, smaller_than):
	if len(lst) <= 1:
		return lst

	if smaller_than(lst[1], lst[0]):
		aux = lst[0]
		lst[0] = lst[1]
		lst[1] = aux

	tail_sorted_list = one_bubble_pass(lst[1:], smaller_than)

	return [lst[0]] + tail_sorted_list

def bubble_sort(lst, smaller_than):
	# pair swap until shifting index
	if lst == []:
		return []

	lst = one_bubble_pass(lst, smaller_than)
	return bubble_sort(lst[:-1], smaller_than) + [lst[-1]]

# 	(c) Ordenacao rapida (quick sort)
def quick_sort(lst, smaller_than):
	# ...
	return lst


list1 = [1, 2, 3, 4, 5]
list2 = [33, 4, 6, 19, 39, 20, 21]

print("""{} sorted by selection sort: {}. Reverse order: {}.
	  """.format(list2, 
	  		sel_sort(list2, lambda x,y: x < y),
	  		sel_sort(list2, lambda x,y: x > y)))


print("""{} sorted by bubble sort: {}. Reverse order: {}.
	  """.format(list2, 
	  		bubble_sort(list2, lambda x,y: x < y),
	  		bubble_sort(list2, lambda x,y: x > y)))