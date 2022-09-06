package Muuse;

use strictures 2;
use Import::Into;

use Moose            ();
use MooseX::ShortHas ();

# VERSION

# ABSTRACT: Moose but with less typing

# COPYRIGHT

=head1 SYNOPSIS

    use Muuse;
    
    ro "hro";
    lazy hlazy => sub { 2 };
    rwp "hrwp";
    rw "hrw";

=head1 DESCRIPTION

Muuse imports both L<Moose> and L<MooseX::ShortHas>, making it even less work in
typing and reading to set up an object.

=head1 SEE ALSO

=over 4

=item *

L<Mu> - the Moo module from whence this sprang

=back

=cut

sub import {
    my $caller = caller;
    $_->import::into( $caller ) for qw( Moose MooseX::ShortHas );
}

1;
