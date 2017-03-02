import pytest
from subprocess import Popen
from subprocess import PIPE

def test_no_args():
    proc = Popen("python3 calc.py", stdout=PIPE, shell=True)
    assert proc.wait() == -1 #Check Return Code
    assert proc.stdout.read() == "Usage: python calc.py number op number"# <+|-|*|/|%|^2> <number if op is not ^2>”

# return_code = proc.wait()
# output = proc.stdout.read()
