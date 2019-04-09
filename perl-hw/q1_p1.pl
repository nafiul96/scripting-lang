#!/urs/bin/perl

use strict;
use warnings;

my %hash = ();
open INPUTS, "<collections.csv" or die "Can't open input file: $!";
my $line = <INPUTS>;
while ($line =<INPUTS>){
	chomp($line);
	my @fields = split(",", $line); # Fields separated by colons
	##print "$fields[0], $fields[1],$fields[2], $fields[3] \n";
	if( exists($hash{$fields[2]} ) ) {
		$hash{$fields[2]} = $hash{$fields[2]} + 1;
   		
	} else {
   		$hash{$fields[2]} = 1;
	}
}

print "Enter the Name of the Country:\n";
my $inputs = <STDIN>;
chomp $inputs;
if(exists($hash{$inputs})){
	print "$hash{$inputs}";
}else{
	print "0";
}
