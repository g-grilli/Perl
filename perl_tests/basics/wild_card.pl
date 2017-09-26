#!/usr/bin/perl
use strict;
use warnings;

$|=1;

sub main {
  my $file = 'mymanjeeves.txt';
  
  open(INPUT, $file) or die("Input $file not found.\n");
  
  while(my $line = <INPUT>) {
    if($line =~ /I.h./) {
        print $line;
    }
  }
  
  close(INPUT);
}

main();

# . represents wild card so line 13 will return I have I had.