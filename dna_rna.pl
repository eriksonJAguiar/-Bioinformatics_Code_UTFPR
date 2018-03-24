#!/usr/bin/perl -w

#Titulo: DNA to RNA
#Objetivo: Dado uma entrada em um arquivo .fasta de sequencias de DNA o algoritmo transforma a sequencia para RNA
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
    for (my $i=0;$i<scalar(@ncl);$i++){
      if($ncl[$i] eq "T"){
          $ncl[$i] = "U";
      }
      print $ncl[$i];
    }
    print "\n";
    print "------------------------------------\n\n"
  }
}

close(IN);

exit(0);
