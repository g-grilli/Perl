#!/usr/bin/perl
use strict;
use warnings;

$|=1;

sub main {
  # \d digit
  # \s space
  # \S non-space
  # \w alphanumeric
  
  my $text = 'I am 117 years old tomorrow.';
  
  if($text =~ /(y\S*)/) {
   print "Matched: '$1'\n"
  }
}

main();

# line 15 /(\d+)/   returns  Matched: '117'
# line 15 /(am\s\d+)/ returns Matched: 'am 117'
# line 15 /(y\S*)/ returns Matched: 'years'
# line 13 'Iam117yearsoldtomorrow.' line 15 /(\w*)/ returns Matched: 'Iam117yearsoldtomorrow'