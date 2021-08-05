#!/usr/bin/perl
use warnings;
use strict;

print "Welcome to the Band Name Generator.\n";
print "Which city did you grow up in?\n";
chomp (my $city = <STDIN>);
print "What is the name of your pet?\n";
chomp (my $pet = <STDIN>);
print "Your Band name is $city $pet\n";
