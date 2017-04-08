package CPANPLUS::Config::YACSmoke;

# Dist::Zilla: +PodWeaver
#ABSTRACT: Set the environment for YACSmoking

use strict;
use File::Spec;

sub setup {
  my $conf = shift;
  $conf->set_conf( base => File::Spec->catdir( $ENV{PERL5_YACSMOKE_BASE}, '.cpanplus' ) )
	if $ENV{PERL5_YACSMOKE_BASE};
  return 1;
}

'YACSmoking';

=pod

=head1 SYNOPSIS

  export PERL5_YACSMOKE_BASE=/home/moo/perls/conf/perl-5.8.9/

=head1 DESCRIPTION

CPANPLUS::Config::YACSmoke is a L<CPANPLUS::Config> file that allows the CPAN Tester to
specify where L<CPANPLUS::YACSmoke> and L<CPANPLUS> get their configuration from.

Setting the environment variable C<PERL5_YACSMOKE_BASE> to a path location, determines
where the C<.cpanplus> directory will be located.

=head1 METHODS

=over

=item C<setup>

Called by L<CPANPLUS::Configure>.

=back

=head1 KUDOS

Contributions and patience from Jos Boumans the L<CPANPLUS> guy!

=head1 SEE ALSO

L<CPANPLUS>

=cut
