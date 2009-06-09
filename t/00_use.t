use Test::More tests => 3;
BEGIN { use_ok('CPANPLUS::YACSmoke') };
BEGIN { use_ok('CPANPLUS::Dist::YACSmoke') };
BEGIN { use_ok('CPANPLUS::Config::YACSmoke') };
diag( "\nTesting CPANPLUS::YACSmoke $CPANPLUS::YACSmoke::VERSION, Perl $], $^X" );
diag( "Testing CPANPLUS::Dist::YACSmoke $CPANPLUS::Dist::YACSmoke::VERSION, Perl $], $^X" );
diag( "Testing CPANPLUS::Config::YACSmoke $CPANPLUS::Config::YACSmoke::VERSION, Perl $], $^X" );
