#!/urs/bin/perl
use strict;
use warnings;


my $a = <STDIN>;
chomp($a);

excludeK($a);

sub excludeK{

my $k  = $_[0];

my %hash = ();
open INPUTS, "<q2.in" or die "Can't open input file: $!";
my $line;
my $count = 0;
my $uncount = 0;
while ($line =<INPUTS>){
	chomp($line);
	my @fields = split(" ", $line);
	my $sz =  @fields;
	if($sz != $k){
		$count = $count +1;
		$hash{$count} = $line;		
	}else{
		$uncount = $uncount + 1;
	}	
}


my @dict_id = keys %hash;

open OUTPUTS, ">q2_p2.out" or die "Die for life!";

if($uncount <= 0){
	print OUTPUTS "Oooh Nooo!";

	}else{

foreach my $i (@dict_id){
	print OUTPUTS "$hash{$i}\n";
}

}

}

