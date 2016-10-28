#/usr/bin/env python
N = 100
from random import uniform
def f():
        a = uniform(0,1)
        b = uniform(0,1)
        c = uniform(0,1)
        d = uniform(0,1)
        e = uniform(0,1)
        f = 1*a + 2*b + 3*c + 4*d + 5*e
        print f," | ","f1:"+str(a)+" f2:"+str(b)+" f3:"+str(c)+" f4:"+str(d)+" f5:"+str(e)
if __name__ == '__main__':
        for i  in range(N):
            f()

