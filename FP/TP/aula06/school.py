# Complete o programa!
import math 

# a)
def loadFile(fname, lst):
    with open(fname, "r") as file:
        for index,  line in enumerate(file, start= 1):
            line = line.strip()
            line = line.split("\t")
            if line[0] != "Numero":
                lst.append([line[0], line[1], float(line[5]), float(line[6]), float(line[7])])

# b) Crie a função notaFinal aqui...
def notafinal(linha):
    notafinal = (linha[2]+linha[3]+linha[4])//3
    return notafinal

# c) Crie a função printPauta aqui...
def printPauta(lst):
    for line in lst:
        print(line[0], line[1], notafinal(line))

# d)
def main():
    lst = []
    # ler os ficheiros
    loadFile("school1.csv", lst)
    loadFile("school2.csv", lst)
    loadFile("school3.csv", lst)
    
    # ordenar a lista
    lst.sort(key=lambda x: notafinal(x), reverse=True)
    
    # mostrar a pauta
    printPauta(lst)


# Call main function
if __name__ == "__main__":
    main()


