#!/usr/bin/perl
use warnings;
use strict;

print<<"EOT";
*******************************************************************************
          |                   |                  |                     |
 _________|________________.=""_;=.______________|_____________________|_______
|                   |  ,-"_,=""     `"=.|                  |
|___________________|__"=._o`"-._        `"=.______________|___________________
          |                `"=._o`"=._      _`"=._                     |
 _________|_____________________:=._o "=._."_.-="'"=.__________________|_______
|                   |    __.--" , ; `"=._o." ,-"""-._ ".   |
|___________________|_._"  ,. .` ` `` ,  `"-._"-._   ". '__|___________________
          |           |o`"=._` , "` `; .". ,  "-._"-._; ;              |
 _________|___________| ;`-.o`"=._; ." ` '`."\` . "-._ /_______________|_______
|                   | |o;    `"-.o`"=._``  '` " ,__.--o;   |
|___________________|_| ;     (#) `-.o `"=.`_.--"_o.-; ;___|___________________
____/______/______/___|o;._    "      `".o|o_.--"    ;o;____/______/______/____
/______/______/______/_"=._o--._        ; | ;        ; ;/______/______/______/_
____/______/______/______/__"=._o--._   ;o|o;     _._;o;____/______/______/____
/______/______/______/______/____"=._o._; | ;_.--"o.--"_/______/______/______/_
____/______/______/______/______/_____"=.o|o_.--""___/______/______/______/____
/______/______/______/______/______/______/______/______/______/______/_____ /
*******************************************************************************
EOT

print "Welcome to Treasure Island.\n";
print "Your mission is to find the treasure.\n";

print "You're at a cross road, where do you want to go? Type 'left' or 'right'?";
chomp(my $left_or_right = lc(<STDIN>));
if ($left_or_right eq "left") {
  print "You arrived at a lake. There is an island in the middle of the lake.";
  print " Type 'swim' to swim across. Or you can 'wait'?";
  chomp (my $swim_wait = lc(<STDIN>));
  if ($swim_wait eq "wait") {
    print "You arrived at three doors. Blue, Yellow and Red. ";
    print " Which one Do you want to choose?";
    chomp (my $door_color = lc(<STDIN>));
    if ($door_color eq "Red") { 
      print("Burned by fire! Game Over!")
    }
    elsif ($door_color eq "blue") {
      print "Eaten by beasts! Game Over!";
    }
    elsif ($door_color eq "yellow") {
      print "You Win!\n";
    }
    else {
      print "Game Over!\n";
    }
  }
  else {
    print "A trout attacked you and dragged you into the depths! Game Over!\n";
  }
}
else {
  print "You fell into a hole! Game Over!\n";
}
