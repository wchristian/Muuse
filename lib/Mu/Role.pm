package Mu::Role;

use strictures 2;
use Import::Into;

use Moo::Role      ();
use MooX::ShortHas ();

# VERSION

# ABSTRACT: Moo::Role but with less typing

# COPYRIGHT

=head1 SYNOPSIS

    use Mu::Role;
    
    ro "hro";
    lazy hlazy => sub { 2 };
    rwp "hrwp";
    rw "hrw";

=head1 DESCRIPTION

Mu imports both L<Moo::Role> and L<MooX::ShortHas>, making it even less work in
typing and reading to set up a role.

=cut

sub import {
    my $caller = caller;
    $_->import::into( $caller ) for qw( Moo::Role MooX::ShortHas );
}

1;
