#!/urs/bin/perl

use strict;
use warnings;
use File::Spec;

my $dir = "features";
mkdir( $dir );

for(my $i=0; $i<=9; $i = $i+1){
	 open my $fh, '>', "features/$i-features.txt";
	 close $fh;
}

open INPUTS, "<features.txt" or die "Can't open input file: $!";
my $line;
while ($line =<INPUTS>){
	chomp($line);
	my @fields = split(",", $line); # Fields separated by colons
	open my $fh , ">>features/$fields[1]-features.txt";
	print $fh  "$fields[0]\n";
	close $fh; 
}

print "Files have been saved!";

for(my $i=0; $i<=9; $i++){

	 my $abs_path = File::Spec->rel2abs("$i-features.txt");
	 print "\n$abs_path";
}















