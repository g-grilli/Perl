#!/usr/bin/perl
use strict;
use warnings;

use LWP::Simple;

sub main {
  print "Downloading...\n";
  # print get("http://weather.grilli.tech");
  my $code = getstore("http://weather.grilli.tech", "weather.html");
  
  if($code == 200) {
    print "Success\n";
  }
  else {
    print "Failed\n";
  }
  print "Finished\n";
}

main();