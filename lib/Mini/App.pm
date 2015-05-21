package Mini::App;
use feature 'say';
use strict;
use warnings;
use Class::Accessor::Inherited::XS {  
      inherited => [qw/cfg _is_inited _parts _reqs/],
};

sub pre_configure {
    my ($class) = @_;
}
sub configure {};
sub post_configure {};

sub init {
    my ($class) = @_;
    use Data::Dumper;
    print Dumper($class->_reqs,$class->_parts);
    return undef if $class->_is_inited;
    $class->pre_configure();
    $class->configure();  
    $class->post_configure();
    $class->setup();
    
}
sub setup {}
sub run {} # mb?

sub import {
     my $class = shift;
     $class->_reqs({}) unless $class->_reqs;
     $class->_reqs->{$_} = 1 foreach @_;
}

sub register_part {
    my ($class,$part,$value) = @_;
    $class->_parts({}) unless $class->_parts;
    my $part_name = 'Mini::App::Plugin::'.$value;
    $class->_parts->{$part} =  $part_name
}

1; # End of Mini::Application
