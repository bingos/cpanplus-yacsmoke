use Test::More;
eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@ or $ENV{AUTOMATED_TESTING};
all_pod_files_ok();
