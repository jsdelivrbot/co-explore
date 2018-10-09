"""
Bisection logic to chase a target output by setting an input

Given a function f(x) find the x that makes f(x) hit a target y


"""

from scipy.optimize import fminbound

def f(x):
    return x**2 + 2*x - 2

print(fminbound(f, -100, 100, full_output=1, disp=3))
# print(fminbound(f, 0, 1, maxfun=3, full_output=1, disp=3))
