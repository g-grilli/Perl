#!usr/bin/perl
use strict;
use warnings;

$| = 1;

sub main  {
    my $text = "The code for this device is GP8765.";
    
    if ($text =~ /(\w{2}\d{2,6})/) {
        print "the code is: '$1'\n";
    }
    else {
        print "Code not found.\n"
    }
}

main();