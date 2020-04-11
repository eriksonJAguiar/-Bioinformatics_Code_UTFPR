#!/usr/bin/perl

# Titulo: Par
# Objetivo: Verifica se um numero é par ou Impar
# 09/03/18

use strict;

print ("Digite um Numero: ");

my $n = <>;
chomp($n);

if($n%2 == 0){
    print "Par \n";
}
else{
    print "Impar \n";
}

