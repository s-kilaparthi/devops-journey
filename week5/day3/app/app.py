def add(a, b):
    return a + b

def subtract(a, b):
    return a - b

def multiply(a, b):
    return a * b

def divide(a, b):
    if b == 0:
        raise ValueError("Cannot divide by zero!")
    return a / b

def square(a):
    return a * a

def cube(a):
    return a * a * a

def remainder(a, b):
    return a % b

def is_odd(a):
    return a % 2 != 0

def is_even(a):
    return a % 2 == 0
