#!/usr/bin/perl
use strict;
use warnings;

$|=1;

sub main {
  
  my $input = 'mymanjeeves.txt';
  open(INPUT, $input) or die("Input $input not found.\n");
  
  my $output = 'output.txt';
  open(OUTPUT, '>'.$output) or die("Can't create $output.\n");
  
  while(my $line = <INPUT>) {
    
    if($line =~ /\begg\b/) {
        $line =~ s/\bhen\b/dinosaur/ig;
        print OUTPUT $line;
        print "task complete\n";
    }
  }
  
  close(INPUT);
  close(OUTPUT);
}

main();