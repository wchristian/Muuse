package Mu;

use strictures 2;
use Import::Into;

use Moo            ();
use MooX::ShortHas ();

# VERSION

# ABSTRACT: Moo but with less typing

# COPYRIGHT

=head1 SYNOPSIS

    use Mu;
    
    ro "hro";
    lazy hlazy => sub { 2 };
    rwp "hrwp";
    rw "hrw";

=head1 DESCRIPTION

Mu imports both L<Moo> and L<MooX::ShortHas>, making it even less work in typing
and reading to set up an object.

=head1 SEE ALSO

=over 4

=item *

L<Mus> - Mu but with slightly more typing and strict constructors

=back

=cut

sub import {
    my $caller = caller;
    $_->import::into( $caller ) for qw( Moo MooX::ShortHas );
}

1;
