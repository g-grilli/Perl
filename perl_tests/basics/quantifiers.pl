#!/usr/bin/perl
use strict;
use warnings;

$|=1;

sub main {
  my $file = 'mymanjeeves.txt';
  
  open(INPUT, $file) or die("Input file $file not found.\n");
  
  while(my $line = <INPUT>) {
    
    if($line =~ /(s.*?n)/) {
        print "$1\n";
    }
  }
  
  close(INPUT);
}

main();

# + counts how many as in line 13 /(l+)/ you'll get l and l1
# * 0 or more ie.. sn son soon /(so*n/ 
# . gets everything from s on /(s.*n)/ asterisks are greedy goes as far as it can
# ? gets first condition /(s.*?n)/