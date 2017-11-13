#!/usr/bin/perl
use strict;
use warnings;

$|=1;

sub arrays {
  
  my @files = (
    'weather.html',
    'base.pl',
    'weather',
    ); 
  
  # my $file = 'weather.html';only used before adding array to get single file
  
  foreach my $file(@files) {
    if( -f $file) {
      print "Found file: $file\n";
    }
    else {
      print "File not found: $file\n";
    }
  }

}
arrays();