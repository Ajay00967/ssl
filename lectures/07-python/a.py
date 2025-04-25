a,b,c = (3,6,6)

def fun(a,b,c):
    a*=a
    b+=34
    c-=2
    return a,b,c

l = fun(a,b,c)

print(l)
print(type(l))
