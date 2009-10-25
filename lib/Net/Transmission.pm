#$Id$

package Net::Transmission;

use strict;
use warnings;
use Collection;
our @ISA     = ();
use Carp;
use 5.005;

=head1 NAME

Net::Transmission - Perl interface to Transmission

=head1 SYNOPSIS

    use Net::Transmission;

=head1 ABSTRACT
 
Transmission is a cross-platform BitTorrent client.

=head1 DESCRIPTION

Net::Transmission - Perl interface to Transmission.

=cut


our $VERSION = '0.01_02';
my $attrs = {
    _cli       => undef,
};
### install get/set accessors for this object.
for my $key ( keys %$attrs ) {
    no strict 'refs';
    *{ __PACKAGE__ . "::$key" } = sub {
        my $self = shift;
        $self->{$key} = $_[0] if @_;
        return $self->{$key};
      }
}

=head1 METHODS

=cut

=head1 SEE ALSO

L<http://trac.transmissionbt.com/>

=head1 AUTHOR

Zahatski Aliaksandr, E<lt>zag@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2009 by Zahatski Aliaksandr

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=cut
