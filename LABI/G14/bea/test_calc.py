import pytest
from subprocess import Popen
from subprocess import PIPE

def test_no_args():
    proc = Popen("python3 calc.py", stdout=PIPE, shell=True)
    assert proc.wait() == 1 #Check Return Code
    assert proc.stdout.read() == b"Usage: python calc.py number op number <+|-|*|/|%|^2> <number if op is not ^2>\n"

def test_some_args():
    proc = Popen("python3 calc.py 5 + 2", stdout=PIPE, shell=True)
    assert proc.wait() == 0 #Check Return Code
    assert proc.stdout.read() == b"7.0\n"

# return_code = proc.wait()
# output = proc.stdout.read()
