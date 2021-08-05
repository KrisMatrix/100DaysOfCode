#!/usr/bin/perl
use warnings;
use strict;
use feature "signatures";

my $rock =<<"EOT";
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)
EOT

my $paper =<<"EOT";
     _______
---'    ____)____
           ______)
          _______)
         _______)
---.__________)
EOT

my $scissors =<<"EOT";
    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)
EOT

sub show_choice($choice) {
  if ($choice == 0) {
    print "$rock\n";
  }
  elsif ($choice == 1) {
    print "$paper\n";
  }
  else {
    print "$scissors\n";
  }
}

print "What do you choose? Type 0 for Rock, 1 for Paper, or 2 for Scissors.\n";
my $user_choice = <STDIN>;
chomp $user_choice;
$user_choice = int($user_choice);

if ($user_choice > 2 or $user_choice < 0) {
  print "Invalid User Choice!\n";
  exit;
}

show_choice($user_choice);
my $computer_choice = int(rand(2));
print "Computer chose:\n";
show_choice($computer_choice);

if ($user_choice == $computer_choice) {
  print "Draw\n";
}
elsif ($user_choice == 0 and $computer_choice == 2) {
  print "You win!\n";
}
elsif ($user_choice == 0 and $computer_choice == 1) {
  print "You Lose!\n";
}
elsif ($user_choice == 1 and $computer_choice == 2) {
  print "You Lose!\n";
}
elsif ($user_choice == 1 and $computer_choice == 0) {
  print "You win!\n";
}
elsif ($user_choice == 2 and $computer_choice == 0) {
  print "You Lose!\n";
}
elsif ($user_choice == 2 and $computer_choice == 1) {
  print "You win!\n";
}
