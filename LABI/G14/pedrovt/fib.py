def fibonacci(n):
    res = []

    if n < 1:
        res = []

    elif n == 1:
        res = [1]

    elif n == 2:
        res = [1, 1]

    else:
        res = [1, 1]
        for i in range(n-2):
            res.append(res[0+i] + res[1+i])

    return res




