import pytest
from fib import fibonacci

def test_inferior_1():
    print("Tests behavior when n < 1")
    assert fibonacci(0) == []
    assert fibonacci(-1) == []

def test_bigger_equal_1():
    print("Tests behavior when n < 1")
    assert fibonacci(1) == [1]
    assert fibonacci(2) == [1, 1]
    assert fibonacci(5) == [1, 1, 2, 3, 5]

def test_result_length():
    for i in range(1, 100):
        assert len(fibonacci(i)) == i
