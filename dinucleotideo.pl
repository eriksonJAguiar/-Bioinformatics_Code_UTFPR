#!/usr/bin/perl -w

#Titulo: Dinucleotideo
#Objetivo: Dado uma entrada em um arquivo .fasta de sequencias o algoritmo conta os dinucleotideos da sequencia
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
    my $count = 0;
    for (my $i=0;$i<scalar(@ncl)-1;$i+=2){
            print $ncl[$i]."".$ncl[$i+1]."\n";
            $count += 1;
    }
    print "Numero de Dinucleotideos = ".$count."\n";
    print "------------------------------------\n\n"
  }
}

close(IN);

exit(0);
