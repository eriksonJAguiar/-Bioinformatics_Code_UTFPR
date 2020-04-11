#!/usr/bin/perl -w

#Titulo: Fita Complementar
#Objetivo: Dado uma entrada em um arquivo .fasta de sequencias DNA, algoritmo obtem a fita complementar e conta o numero de nucleotideos
#Data: 23/03/18 

use strict;

my $file = $ARGV[0];

open(IN, "<$file") or die "Erro na leitura do arquivo"; # <$file - abertura do arquivo para gravar

my %comp = ("A" => "T", "T" => "A", "G" => "C", "C" => "G");


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
    my $seqCom = "";
    print  print "5'--".$line."--3' \n\n";
    print "3'--";
    foreach my $n (@ncl){
      print $comp{$n};
    }
    print "--5' \n";
    print "Tamanho da Seq = ".scalar(@ncl)."\n";
    print "------------------------------------\n"
  }
}

close(IN);

exit(0);
