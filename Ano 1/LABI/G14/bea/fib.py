def fibonacci(n):
    # edge cases
    if n < 1:
        return []
    if n == 1:
        return [1]

    # normal algorithm
    fib = [1,1]
    for i in range(n-2):
        fib.append(fib[0+i] + fib[1+i])
    return fib
