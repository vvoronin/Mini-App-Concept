#!perl
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Mini::Application' ) || print "Bail out!\n";
}

diag( "Testing Mini::Application $Mini::Application::VERSION, Perl $], $^X" );
