n = 0
mean = 0
c = input("Insira o numero")
while c == "" :
    mean = mean + int(c)
    n = n + 1
    c = input("Insira o numero")

print("{:f}".format(mean/n))