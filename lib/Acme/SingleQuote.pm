package Acme::SingleQuote;
use strict;
use warnings;
use 5.008008;
our $VERSION = '0.01';

sub import {
    my $class = shift;
    my $pkg = caller;

    my $var = shift || 'q';

    no strict 'refs';
    *{"$pkg\::$var"} = \q{'};
}

1;
__END__

=encoding utf8

=head1 NAME

Acme::SingleQuote - use single quote in one-liner

=head1 SYNOPSIS

  # export $q
  perl -MAcme::SingleQuote -le 'print qq/${q}Hello!${q}/'

  # export $quote
  perl -MAcme::SingleQuote=quote -le 'print qq/${quote}World!${quote}/'

=head1 DESCRIPTION

Acme::SingleQuote provides single quote character for one-liner.

=head1 AUTHOR

libkenta E<lt>libkenta at gmail.comE<gt>

=head1 SEE ALSO

=head1 LICENSE

Copyright (C) libkenta

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
