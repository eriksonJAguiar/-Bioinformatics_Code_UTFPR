#!/usr/bin/perl -w

#Titulo: Conta Nucleotideos
#Objetivo: Dado uma entrada em um arquivo .fasta de sequencias o algoritmo conta os nucleotideos da sequencia
#Data: 23/03/18 


use strict;

my $file = $ARGV[0];

open(IN, "<$file") or die "Erro na leitura do arquivo"; # <$file - abertura do arquivo para gravar


while(my $line = <IN>)
{
  chomp($line);
  if(substr($line,0,1) eq '>')
  {
    my $gene = substr($line,1,length($line)-1);
    print "Gene ".$gene."\n";
  }
  else{
    my @ncl = split "", $line;
    print "Seq = ".$line."\n\n";
    my $count = scalar(@ncl);
    print "Numero de Nucleotideos = ".$count."\n";
    print "------------------------------------\n\n"
  }
}

close(IN);

exit(0);
