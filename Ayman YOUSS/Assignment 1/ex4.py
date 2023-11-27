import math

def delta(a, b, c):
    return b*b - 4*a*c

def equation(a, b, c):
    deltaEq = delta(a, b, c)
    
    if deltaEq > 0:
        print("x1:", (-b + math.sqrt(deltaEq)) / (2*a))
        print("x2:",(-b - math.sqrt(deltaEq)) / (2*a))
    
    elif deltaEq == 0:
        print("x1:", -b/(2*a))
    
    else:
        print("The equation has no solution")

equation(1, -1, -1)
