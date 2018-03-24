#!/usr/bin/perl

# Titulo: Maior que 5
# Objetivo: Verifica se um numero é maior que 5
# 09/03/18

use strict;

print ("Digite um Numero: ");

my $n = <>;
chomp($n);

if($n > 5){
    print "Maior \n";
}

exit 0;