#!/usr/bin/env perl

use strict;

local $/ = ">";
my $first = <>;
while(my $record = <>){
  chomp $record;
  my $newline_loc = index($record,"\n");
  my $header = substr($record,0,$newline_loc);
  my $sequence = substr($record,$newline_loc+1);
  $sequence =~ tr/\n//d;
  print "$sequence\t" . length($sequence) . "\n";
}