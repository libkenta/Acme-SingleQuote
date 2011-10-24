use strict;
use Test::More tests => 3;

my $is = \&is;

{
    package X;
    use Acme::SingleQuote;

    $is->($q, q{'});
}

{
    package Y;
    use Acme::SingleQuote qw/quote/;

    $is->($quote, q{'});

    no strict 'vars';
    $is->($q, undef);
}
