import pytest
from subprocess import Popen
from subprocess import PIPE

# Invalid args
def test_args():
    proc = Popen("python calc.py 5 + 3", stdout=PIPE, shell=True)
    assert proc.wait() == 0
    assert proc.stdout.read() == "8.0\n" #prints adds \n in the end«

# No args
def test_noargs():
    proc = Popen("python calc.py", stdout=PIPE, shell=True)
    assert proc.wait() == 1 #returns error code?
    assert proc.stdout.read() == "Usage: calc.py number operation number (operation : + - * /)\n"

# Invalid operation
def test_invalid_op():
    proc = Popen("python calc.py 5 t 3", stdout=PIPE, shell=True)
    assert proc.wait() == 1  #
    assert proc.stdout.read() == "Usage: calc.py number operation number (operation : + - * /)"






