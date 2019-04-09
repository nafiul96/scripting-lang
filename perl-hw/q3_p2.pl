#!/urs/bin/perl
use strict;
use warnings;

 my %table = (
	"jan"=> 1,
	"feb"=> 2,
	"mar"=> 3,
	"apr"=> 4,
	"may"=> 5,
	"jun"=> 6,
	"jul"=> 7,
	"aug"=> 8,
	"sep"=> 9,
	"oct"=> 10,
	"nov"=> 11,
	"dec"=> 12
);
 my %num_table = (
	1=> 4840,
	2=> 4340,
	3=> 3900,
	4=> 4330,
	5=> 3090,
	6=> 3660,
	7=> 3520,
	8=> 3280,
	9=> 4130,
	10=> 3690,
	11=> 4260,
	12=> 4800
 	);



print "Months can be selected using the three initial letters\n";

print "Enter the initial month:";
my $init = <STDIN>;
chomp($init);
$init = lc($init);
while(!exists($table{$init})){
print "Re-enter the initial month:";
$init = <STDIN>;
chomp($init);
$init = lc($init);
}

print "Enter the final month:";
my $fin = <STDIN>;
chomp($fin);
$fin = lc($fin);
while(!exists($table{$fin}) || ($table{$fin} < $table{$init})){
print "Re-enter the final month:";
$fin = <STDIN>;
chomp($fin);
$fin = lc($fin);
}


my $sum = 0;

for(my $st=$table{$init}; $st <=$table{$fin}; $st = $st+1){

	$sum = $sum + $num_table{$st};
}

print "The cumulative revenue is: $sum";











