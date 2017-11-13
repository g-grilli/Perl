#!/usr/bin/perl
use strict;
use warnings;

$|=1;

sub main {
  # * zero or more of preceding charecter, as many as possible
  # + one or more of the preceding, as many as possible
  # *? zero or more of preceding charecter, as few as possible
  # +? ne or more of the preceding, as few as possible
  # {5} five of the preceding
  # {3,6} at least 3 and at most 6
  # {3,} at least 3
  
  # \d digit
  # \s space
  # \S non-space
  # \w alphanumeric
  
  my $text = 'DE75883';
  
  if($text =~ /(DE\d{5})/) {
   print "Matched: '$1'\n";
  }
  else {
    print "No match found.\n";
  }
}

main();