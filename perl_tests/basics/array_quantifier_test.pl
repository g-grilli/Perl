#!/usr/bin/perl
use strict;
use warnings;

$|=1;

sub main {
    my @emails = (
        'gene@grilli.com',
        'kay@grilli.com',
        'bob.sith',
        'steve@pickles.com',
        'steve @ pickles . com',
        'bob@.sith',
        'bob@steve. sith',
    );
    
    foreach my $email(@emails) {
        if($email =~ /\w\@\w+\.\w{1,4}/) {
            print "Valid: '$email'\n";
        }
        else {
            print "Invalid: '$email'\n"
        }
    }
  
}

main();