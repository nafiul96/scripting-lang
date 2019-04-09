#!/usr/bin/perl
use strict;
use warnings;

my %hash = ();
my $file = $ARGV[0];
open INPUTS, "<$file" or die "Can't open input file: $!";
my $line;
while ($line =<INPUTS>){
	chomp($line);
	my @fields = split(",", $line);
	my @words = split(" ", $fields[0]);
	my $size = @words;

	if(exists($hash{$fields[1]})){
		
		$hash{$fields[1]} = $hash{$fields[1]} + $size;
	}else{
		$hash{$fields[1]} = $size;
	}
	
}


## total_#_of_words_with_0

my @dict_id = keys %hash;
@dict_id = sort @dict_id;

foreach my $i (@dict_id){
	print "$hash{$i}\n";
}


### print back to file