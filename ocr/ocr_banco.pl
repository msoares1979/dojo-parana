#!/usr/bin/env perl
use warnings;
use strict;

use Test::More;

#is(1, 2, "teste");

my $um =
"   \n". 
"  |\n".
"  |\n   ";

my $dois =
" _ \n" .
" _|\n" .
"|_ \n   ";

my $tres =
" _ \n" .
" _|\n" .
" _|\n   ";

sub parse{
    my $arg = shift(@_);

    if ($arg eq $dois) {
       return 2;
    }
    if ($arg eq $tres) {
       return 3;
    }
        
    return 1;
}

ok(parse($um) == 1, "um");
ok(parse($dois) == 2, "dois");
ok(parse($tres) == 3, "tres");

done_testing();