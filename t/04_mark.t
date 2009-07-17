### make sure we can find our conf.pl file
BEGIN { 
    use FindBin; 
    require "$FindBin::Bin/inc/conf.pl";
}

use strict;
use warnings;
use File::Temp;
use File::Find;
use Test::More tests => 16;
use_ok('CPANPLUS::YACSmoke');

my $dir = File::Temp::tempdir( CLEANUP => 1 );

my @env_vars = qw(AUTOMATED_TESTING PERL_MM_USE_DEFAULT MAILDOMAIN);
delete $ENV{$_} for @env_vars;

my $self = CPANPLUS::YACSmoke->new( gimme_conf() );
isa_ok($self,'CPANPLUS::YACSmoke');
ok( $ENV{$_}, "$_ is set" ) for @env_vars;
isa_ok( $self->{conf}, 'CPANPLUS::Configure' );
isa_ok( $self->{cpanplus}, 'CPANPLUS::Backend' );
$self->{conf}->set_conf( md5 => 0 );
ok( !defined $self->mark('Foo::Bar'), 'No mark yet' );
foreach my $grade (qw(PASS FAIL NA UNKNOWN)) {
  is($self->mark('Foo::Bar',$grade),lc $grade,"Setting Foo::Bar to '$grade'");
  is($self->mark('Foo::Bar'),lc $grade,"Foo::Bar is '$grade'");
}
