#!/usr/bin/perl

# Titulo: IMC
# Objetivo: Realizar o calculo do IMC e mostrar a condicao
# 09/03/18

use strict;

print "Digite a altura:";
my $altura = <>;  # <> entrada padrão semelhante ao scanf
chomp($altura);
print "Digite o peso:";
my $peso = <>;
chomp($peso);

my $result = ($peso / ($altura * $altura));
chomp($result); # esse comando tira quebra de linha

print "Resultado: ". $result . "\n"; # . concatenação

if($result > 30){
  print "Condicao = Obeso \n";
}
elsif($result < 18.5){
  print "Condicao = Abaixo do Peso \n";
}
elsif($result >= 25 && $result < 29){
  print "condicao = Sobrepeso \n";
}
else{
  print "condicao = Normal \n";
}

exit 0;
