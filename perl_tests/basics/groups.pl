#!/usr/bin/perl
use strict;
use warnings;

$|=1;

sub main {
  my $file = 'mymanjeeves.txt';
  
  open(INPUT, $file) or die("Input $file not found.\n");
  
  while(my $line = <INPUT>) {
    if($line =~ /(I..a.)(...)/) {
        print "First match: '$1'; Second match:'$2'\n";
    }
  }
  
  close(INPUT);
}

main();

# line 14 could just be print "$1$2\n";
# line 14 could just be print "First match: $1; Second match:$2\n"; 