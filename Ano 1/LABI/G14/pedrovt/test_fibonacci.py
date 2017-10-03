# encoding=utf-8

#import pytest
from fib import fibonacci

def test_below1():
    print("Test behavior with n<1")
    assert fibonacci(0) == []
    assert fibonacci(-1) == []

def test_equal1():
    assert fibonacci(1) == [1]

def test_equal2():
    assert fibonacci(2) == [1,1]

def test_equal5():
    assert fibonacci(5) == [1,1,2,3,5]

def test_dimension():
    for n in range(1, 50):
        assert len(fibonacci(n)) == n