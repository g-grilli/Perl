#!usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

$| = 1;

sub main {
    
    my $input = 'test.csv';
    
    unless(open(INPUT, $input)) {
        die "\nCan not open $input\n";
    }
    <INPUT>;
    
    while(my $line = <INPUT>) {
        
        my @values = split ',', $line;
        
        # print join '|', @values;
        
        print Dumper(@values);
    }
    
    close INPUT;
}

main();