use strict;
return sub {
    my $env = shift;
    return [
        200,
        [ 'Content-Type' => 'text/html' ],
        ['Hello World!'],
    ]
};

