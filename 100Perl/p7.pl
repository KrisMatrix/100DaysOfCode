#!/usr/bin/perl
use warnings;
use strict;

my @stages = (

" +---+
  |   |
  O   |
 /|\\  |
 / \\  |
      |
=========" ,

" +---+
  |   |
  O   |
 /|\\  |
 /    |
      |
=========",

" +---+
  |   |
  O   |
 /|\\  |
      |
      |
=========",

" +---+
  |   |
  O   |
 /|   |
      |
      |
=========",

" +---+
  |   |
  O   |
  |   |
      |
      |
=========",

" +---+
  |   |
  O   |
      |
      |
      |
=========",

" +---+
  |   |
      |
      |
      |
      |
=========");

my $logo =  "HANGMAN";

my @word_list = (
'abruptly', 
'absurd', 
'abyss', 
'affix', 
'askew', 
'avenue', 
'awkward', 
'axiom', 
'azure', 
'bagpipes', 
'bandwagon', 
'banjo', 
'bayou', 
'beekeeper', 
'bikini', 
'blitz', 
'blizzard', 
'boggle', 
'bookworm', 
'boxcar', 
'boxful', 
'buckaroo', 
'buffalo', 
'buffoon', 
'buxom', 
'buzzard', 
'buzzing', 
'buzzwords', 
'caliph', 
'cobweb', 
'cockiness', 
'croquet', 
'crypt', 
'curacao', 
'cycle', 
'daiquiri', 
'dirndl', 
'disavow', 
'dizzying', 
'duplex', 
'dwarves', 
'embezzle', 
'equip', 
'espionage', 
'euouae', 
'exodus', 
'faking', 
'fishhook', 
'fixable', 
'fjord', 
'flapjack', 
'flopping', 
'fluffiness', 
'flyby', 
'foxglove', 
'frazzled', 
'frizzled', 
'fuchsia', 
'funny', 
'gabby', 
'galaxy', 
'galvanize', 
'gazebo', 
'giaour', 
'gizmo', 
'glowworm', 
'glyph', 
'gnarly', 
'gnostic', 
'gossip', 
'grogginess', 
'haiku', 
'haphazard', 
'hyphen', 
'iatrogenic', 
'icebox', 
'injury', 
'ivory', 
'ivy', 
'jackpot', 
'jaundice', 
'jawbreaker', 
'jaywalk', 
'jazziest', 
'jazzy', 
'jelly', 
'jigsaw', 
'jinx', 
'jiujitsu', 
'jockey', 
'jogging', 
'joking', 
'jovial', 
'joyful', 
'juicy', 
'jukebox', 
'jumbo', 
'kayak', 
'kazoo', 
'keyhole', 
'khaki', 
'kilobyte', 
'kiosk', 
'kitsch', 
'kiwifruit', 
'klutz', 
'knapsack', 
'larynx', 
'lengths', 
'lucky', 
'luxury', 
'lymph', 
'marquis', 
'matrix', 
'megahertz', 
'microwave', 
'mnemonic', 
'mystify', 
'naphtha', 
'nightclub', 
'nowadays', 
'numbskull', 
'nymph', 
'onyx', 
'ovary', 
'oxidize', 
'oxygen', 
'pajama', 
'peekaboo', 
'phlegm', 
'pixel', 
'pizazz', 
'pneumonia', 
'polka', 
'pshaw', 
'psyche', 
'puppy', 
'puzzling', 
'quartz', 
'queue', 
'quips', 
'quixotic', 
'quiz', 
'quizzes', 
'quorum', 
'razzmatazz', 
'rhubarb', 
'rhythm', 
'rickshaw', 
'schnapps', 
'scratch', 
'shiv', 
'snazzy', 
'sphinx', 
'spritz', 
'squawk', 
'staff', 
'strength', 
'strengths', 
'stretch', 
'stronghold', 
'stymied', 
'subway', 
'swivel', 
'syndrome', 
'thriftless', 
'thumbscrew', 
'topaz', 
'transcript', 
'transgress', 
'transplant', 
'triphthong', 
'twelfth', 
'twelfths', 
'unknown', 
'unworthy', 
'unzip', 
'uptown', 
'vaporize', 
'vixen', 
'vodka', 
'voodoo', 
'vortex', 
'voyeurism', 
'walkway', 
'waltz', 
'wave', 
'wavy', 
'waxy', 
'wellspring', 
'wheezy', 
'whiskey', 
'whizzing', 
'whomever', 
'wimpy', 
'witchcraft', 
'wizard', 
'woozy', 
'wristwatch', 
'wyvern', 
'xylophone', 
'yachtsman', 
'yippee', 
'yoked', 
'youthful', 
'yummy', 
'zephyr', 
'zigzag', 
'zigzagging', 
'zilch', 
'zipper', 
'zodiac', 
'zombie', 
);

my $chosen_word = $word_list[rand @word_list];  #randomly chosen hangman word
my $word_length = length($chosen_word);         #length of chosen word

my $end_of_game = 0;  #flag for while loop to end game
my $lives = 6;

print "$logo\n";

print "Pssst, the solution is $chosen_word\n";

my @display;
for (my $i=0; $i < $word_length; $i++) {  #print dashes for word length
  push(@display, "_");
}

while (!$end_of_game) {
  print "Guess a letter: ";
  chomp(my $guess = <STDIN>); 
  $guess = lc $guess;

  if ( grep {$_ eq $guess} @display) {  #if element in array
    print "You've already guessed $guess\n";
  }

  for (my $position = 0; $position < $word_length; $position++) {
    my $letter = substr $chosen_word, $position,1;
    if ($letter eq $guess) {
      $display[$position] = $letter;
    }
  }

  if ( $chosen_word !~ m/$guess/) {
    print "You guessed $guess, that's not in the word. You lose a life.\n";
        
    $lives -= 1;
    if ($lives == 0) {
      $end_of_game = 1;
      print "You lose.\n";
    }
  }

  print join(" ", @display), "\n";

  my $full_text = join("", @display);
  if ($full_text !~ m/_/) { #if there is no '_', end game
    $end_of_game = 1;
    print "You win.";
  }

  print "$stages[$lives]\n";
}
