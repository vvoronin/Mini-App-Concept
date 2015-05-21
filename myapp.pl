use lib::abs 'lib','.','t/lib';
use MyApp qw/
    ConfigLoader
    Name
/;
MyApp->init();