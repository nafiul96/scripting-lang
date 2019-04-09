#!/urs/bin/perl

use strict;
use warnings;

my %hash = ();
open INPUTS, "<collections.csv" or die "Can't open input file: $!";
my $line = <INPUTS>;
while ($line =<INPUTS>){
	my @fields = split(",", $line);
	$hash{$fields[3]} = $fields[0];
}

my @years = keys %hash;

my @sorted_years = sort @years;

print "$hash{$sorted_years[0]}\n";
print "$hash{$sorted_years[$#sorted_years]}";













