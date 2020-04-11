#!/usr/bin/perl -w

@nomes = ("Andre", "Joao", "Gabriela");
print $nomes[0]."\n"; # imprime a "Andre"
$nomes[5] = "Joana"; # adiciona novo elemento na posicao 5
#@vetor = (); # inicializa o vetor
#@nums = (1..100); # lista de 1 ate 100
($a, $b) = ("primeiro", "segundo"); # inicializa $a e $b
($a, $b) = ($b, $a); # troca
print $nomes[5]."\n";