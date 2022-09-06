package Muuse::Role;

use strictures 2;
use Import::Into;

use Moose::Role      ();
use MooseX::ShortHas ();

# VERSION

# ABSTRACT: Moose::Role but with less typing

# COPYRIGHT

=head1 SYNOPSIS

    use Muuse::Role;
    
    ro "hro";
    lazy hlazy => sub { 2 };
    rwp "hrwp";
    rw "hrw";

=head1 DESCRIPTION

Mu imports both L<Moose::Role> and L<MooseX::ShortHas>, making it even less work
in typing and reading to set up a role.

=cut

sub import {
    my $caller = caller;
    $_->import::into( $caller ) for qw( Moose::Role MooseX::ShortHas );
}

1;
