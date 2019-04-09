#!/urs/bin/perl

use strict;
use warnings;




my $str1 = <STDIN>;
chomp($str1);
my $str2 =<STDIN>;
chomp($str2);

swapAll($str1,$str2);

sub swapAll{
# my $find = <STDIN>;
# chomp($find);
# my $replace =<STDIN>;
# chomp($replace);
my $find = $_[0];
my $replace = $_[1];
# my $replace =<STDIN>;
my %hash = ();

open INPUTS, "<q2.in" or die "Can't open input file: $!";
my $line;
my $count = 1;
while ($line =<INPUTS>){
	chomp($line);
	$line =~ s/$find/$replace/g;
	$hash{$count} = $line;
	$count = $count +1;
}


my @dict_id = keys %hash;

open OUTPUTS, ">q2_p1.out";
foreach my $i (@dict_id){
	print OUTPUTS "$hash{$i}\n";
}

}

