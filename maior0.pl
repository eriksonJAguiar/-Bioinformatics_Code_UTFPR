#!/usr/bin/perl

# Titulo: Maior que 0
# Objetivo: Verifica se um numero é maior que 0
# 09/03/18

use strict;

print ("Digite um Numero: ");

my $n = <>;
chomp($n);

if($n > 0.0){
    print "Maior \n";
}
elsif($n < 0.0){
    print "Menor \n";
}
else{
    print "Igual \n";
}

exit 0;