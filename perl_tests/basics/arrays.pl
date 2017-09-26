#!/usr/bin/perl
use strict;
use warnings;


sub arrays {
  
  my @files = (
    'weather.html',
    'base.pl',
    'weather.txt',
    ); 
  
  # my $file = 'weather.html';only used before adding array to getsingle file
  
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