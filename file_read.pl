#!/usr/bin/perl -w

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
    print "Tam = ".
  }
}

close(IN);

exit(0);
