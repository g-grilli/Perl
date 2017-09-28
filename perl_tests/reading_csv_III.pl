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
        
        chomp $line;
        # print"'$line'\n"; using chomp eliminated the retun hidden charecter
        
        my @values = split /\s*,\s*/, $line;
        
        # print join '|', @values;
        
        print Dumper(@values);
    }
    
    close INPUT;
}

main();