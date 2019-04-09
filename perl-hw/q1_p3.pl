#!/urs/bin/perl
use strict;
use warnings;

my %hash = ();
open INPUTS, "<collections.csv" or die "Can't open input file: $!";
my $line;
my $header = <INPUTS>;
chomp($header);
while ($line =<INPUTS>){
	chomp($line);
	my @fields = split(",", $line); 
	$hash{$fields[0]} = $line;

}


open INPUTS, "<m1.csv" or die "Can't open input file: $!";
$line = <INPUTS>;

while ($line =<INPUTS>){
	chomp($line);
	my @fields = split(",", $line); 
	$hash{$fields[0]} = $line;

}


open INPUTS, "<m2.csv" or die "Can't open input file: $!";
$line = <INPUTS>;

while ($line =<INPUTS>){
	chomp($line);
	my @fields = split(",", $line); 
	$hash{$fields[0]} = $line;

}


my @art_id = keys %hash;

@art_id = sort @art_id;

open OUTPUTS, ">exhibition.csv";

print OUTPUTS "$header";
foreach my $i (@art_id){
	print OUTPUTS "\n$hash{$i}";
}


