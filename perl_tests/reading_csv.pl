#!usr/bin/perl
use strict;
use warnings;

$| = 1;

sub main {
    
    my $input = 'test.csv';
    
    unless(open(INPUT, $input)) {
        die "\nCan not open $input\n";
    }
    <INPUT>;
    
    while(my $line = <INPUT>) {
        
        my @values = split ',', $line;
        
        print $values[0] . "\n";
    }
    
    close INPUT;
}

main();