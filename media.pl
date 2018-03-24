#! /usr/bin/perl -w

use strict;

print "Digite a nota 1:";

my $n1 = <>;
chomp($n1);

print "Digite a nota 2:";
my $n2 = <>;
chomp($n2);

print "Digite a nota 3:";
my $n3 = <>;
chomp($n3);

print "Media = ". (($n1 + $n2 + $n3)/ 3) . "\n";

exit 0;

