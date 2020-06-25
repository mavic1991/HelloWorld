def sequence(n):
    while n != 1:
        print(n)
        if n % 2==0:
            n=n/2
        else:
            n=n*3+1

def circle(start =1,end=2):
    if start>end:start,end=end,start
    for i in range(start,end+1):
        print('现在进入循环的是：{0}'.format(i))
        sequence(i)

if __name__=="__main__":
    circle(20,25)