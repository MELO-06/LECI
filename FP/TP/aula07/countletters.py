from unidecode import unidecode
occurences={}

with open("pg3333.txt", 'r', encoding='utf8') as file:
    for line in file:
        for character in line:
            if character.isalpha():
                character = unidecode(character.lower())
                if character in occurences:
                    occurences[character] += 1
                else:
                    occurences[character] = 1
occurences = dict(sorted(occurences.items()))
for el in occurences.keys():
    print(el, occurences[el])