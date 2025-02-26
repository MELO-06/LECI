def mdc(a,b):
    if a%b == 0:
        return b
    else:
        return mdc(b, a%b)


a = int(input("Escreva um valor "))
b = int(input("Escreva outro valor "))

print("O MDC é: ", mdc(a, b))