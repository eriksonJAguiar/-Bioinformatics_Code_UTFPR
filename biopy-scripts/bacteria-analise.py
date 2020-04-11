'''
    Estudo de caso: comparando sequências de
    RNA ribossomal entre humanos e bactéria
    Neste estudo de caso, faremos a comparação
    entre duas sequências de DNA:
    (1) ser humano; vs. (2) bactéria.
'''

entrada = open("16s_bacteria.fasta").readlines()
saida = open("bacteria.html", "w")

cont = {}

entrada = [en.replace("\n", "") for en in entrada]


for i in ['A', 'T', 'C', 'G']:
    for j in ['A', 'T', 'C', 'G']:
        cont[i+j] = 0

for line in entrada:
    for k in range(len(line)-1):
        cont[line[k]+line[k+1]] += 1

# for k in range(len(entrada)-1):
#     for line in entrada:
#         cont[line[k]+line[k+1]] += 1



i = 1
for h in cont:
    transparencia = cont[h]/max(cont.values())
    saida.write("<div style='width:100px; border:1px solid #111; color:#fff; height:100px; float:left; background-color:rgba(0, 0, 0, " +
                str(transparencia)+"')>"+h+"-"+str(cont[h])+"</div>")

    if i % 4 == 0:
        saida.write("<div style='clear:both'></div>")
	
    i+=1 

saida.close()
