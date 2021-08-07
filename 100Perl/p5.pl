#!/usr/bin/perl
use warnings;
use strict;
use v5.10;
use List::Util qw(shuffle);

my @letters = ("a".."z", "A".."Z"); 
my @numbers = ("0".."9"); 
my @symbols = ("!", "#", "\$", "%", "&", "(", ")", "*", "+"); 

say "Welcome to the plPassword Generator!";
say "How many letters would you link in your password?";
chomp(my $no_of_letters = <STDIN>);
say "How many symbols would you link in your password?";
chomp(my $no_of_symbols = <STDIN>);
say "How many numbers would you link in your password?";
chomp(my $no_of_numbers = <STDIN>);

my @password;

for (0..$no_of_letters-1) {
  my $index = rand($#letters-1);
  push(@password, $letters[$index]);
}

for (0..$no_of_symbols-1) {
  my $index = rand($#symbols-1);
  push(@password, $symbols[$index]);
}

for (0..$no_of_numbers-1) {
  my $index = rand($#numbers-1);
  push(@password, $numbers[$index]);
}

print "Here is your password (Easy): ",@password,"\n";
@password = shuffle(@password);
print "Here is your password (Hard): ",@password,"\n";
