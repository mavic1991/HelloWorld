def sequence(n):
    while n != 1:
        print(n)
        if n % 2==0:
            n=n/2
        else:
            n=n*3+1

def circle(x):
    for i in range(6,x+1):
        print('现在进入循环的是：{0}'.format(i))
        sequence(i)

circle(10)