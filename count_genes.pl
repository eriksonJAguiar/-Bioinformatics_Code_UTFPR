#!/usr/bin/perl -w

#Titulo: Conta a quantidade de genes
#Objetivo: Dado uma entrada em um arquivo .fasta de sequencias, o algoritmo conta o numero de Genes
#Data: 23/03/18 


use strict;

my $file = $ARGV[0];

open(IN, "<$file") or die "Erro na leitura do arquivo"; # <$file - abertura do arquivo para gravar

my @genes = ();
my $count = 0;
while(my $line = <IN>)
{
  chomp($line);
  if(substr($line,0,1) eq '>')
  {
    my $gene = substr($line,1,length($line)-1);
    $genes[$count] = $gene;
    $count++;
  }

}
my %hGenes;
foreach my $g (@genes){
   $hGenes{$g} += 1;
}

foreach my $chave (keys %hGenes) {
    print $chave." = ".$hGenes{$chave}."\n";
}

close(IN);

exit(0);
