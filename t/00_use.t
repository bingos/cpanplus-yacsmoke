use Test::More tests => 2;
BEGIN { use_ok('CPANPLUS::YACSmoke') };
BEGIN { use_ok('CPANPLUS::Dist::YACSmoke') };
diag( "Testing CPANPLUS::YACSmoke $CPANPLUS::YACSmoke::VERSION, Perl $], $^X" );
diag( "Testing CPANPLUS::Dist::YACSmoke $CPANPLUS::Dist::YACSmoke::VERSION, Perl $], $^X" );
