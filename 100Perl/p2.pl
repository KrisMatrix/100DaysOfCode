#!/usr/bin/perl
use warnings;
use strict;


print "Welcome to the tip calculator.\n";
print "What was the total bill?";
chomp(my $bill = <STDIN>);
print "How many people to split the bill?";
chomp(my $no_of_people = <STDIN>); 
print "What percentage tip would you like to give?10, 12 or 15?";
chomp (my $tip_choice = <STDIN>);
my $pay = $bill*(1 + $tip_choice/100) / $no_of_people;
print "Each person shoulld pay: $pay\n";
