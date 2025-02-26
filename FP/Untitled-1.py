def decifra_cesar(texto, deslocamento):
    decifrado = ""
    for caractere in texto:
        if 'a' <= caractere <= 'z':  # Apenas letras minúsculas
            nova_letra = chr((ord(caractere) - ord('a') - deslocamento) % 26 + ord('a'))
            decifrado += nova_letra
        else:
            decifrado += caractere  # Mantém os espaços e outros caracteres
    return decifrado

texto = """
znuib kqppr mfbhi nohfb yqbsj zkwvc coddk ivibz pyvae
tenep rfdid szfwk khnsq flpch dtnjm svnwu fkmse fljwn
ifxnc rerto pmwoq okmfw ucfop lhjtw qhpik yoiqb wzwxb
clpyw cmmks fzwql swdzh waqtx zredp bvrlf pbyxq drsfa
vlhbf ecuea wzgtu vzlmk qvplf fyneg rfomi kqnaa jgbvr
sctuu hiizr wwjzr uwunu fznuc lqigt whnct azljn yiwdx
tmyki frvks xwdol uizpj xoviz gruab uuvqe bjajc tzqxy
udrbc ohsdu opbbq xcoul lmnqd nkfvz ubafx updbf ezvnw
kcfhv hctub afajn lhslf zfzhb gwowg mmzqq vtmhv oeyyn
eqmky alwnk hwaip qmhvs xuhst ikkjo pbkbd nzslj jdshh
ocjra axlmw skkhq qwgkn eybbc fgamw gxgtu xzdgz ubivk
ntek spahg grzrn lpfyb xztqk qmypo pyomk yoyay gxnxq
ggliu zvygi xzwdb vupia oy
"""

# Testar deslocamentos de 1 a 25
for deslocamento in range(1, 26):
    print(f"Deslocamento {deslocamento}:\n{decifra_cesar(texto, deslocamento)}\n")
