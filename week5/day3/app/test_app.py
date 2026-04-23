import pytest 
from app import add, subtract, multiply, divide , square , cube , remainder , is_odd , is_even

def test_add():
    assert add(2, 3) == 5

def test_subtract():
    assert subtract(5, 2) == 3

def test_multiply():
    assert multiply(3, 4) == 12

def test_divide():
    assert divide(10, 2) == 5

def test_divide_by_zero():
    with pytest.raises(ValueError):
        divide(10, 0)

def test_square():
    assert square(4) == 16

def test_cube():
    assert cube(3) == 27

def test_remainder():
    assert remainder(10, 3) == 1

def test_is_odd():
    assert is_odd(3) == True
    assert is_odd(4) == False

def test_is_even():
    assert is_even(4) == True
    assert is_even(3) == False
