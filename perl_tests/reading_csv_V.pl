#!usr/bin/perl
use strict;
use warnings;

$| = 1;

sub main {
   sub main {
    
    my $input = 'test.csv';
    
    unless(open(INPUT, $input)) {
        die "\nCan not open $input\n";
    }
    <INPUT>;
    
    my @lines;
    
    while(my $line = <INPUT>) {
        
        chomp $line;
        # print"'$line'\n"; using chomp eliminated the return hidden charecter
        
        my @values = split /\s*,\s*/, $line;
        
        # print join '|', @values;
        
        # print Dumper(@values);
        
        push @lines, $line;
        
    }
    
    close INPUT;
    
    foreach my $line(@lines) {
        print $line . "\n";
    }
} 

main();