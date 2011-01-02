use 5.006;
use strict;
use inc::Module::Install;
name 'CPANPLUS-YACSmoke';
author 'Chris Williams <chris@bingosnet.co.uk>';
version_from 'lib/CPANPLUS/YACSmoke.pm';
abstract_from 'lib/CPANPLUS/YACSmoke.pm';
license 'perl';
auto_license holder => 'Chris Williams, Jos Boumans, Robert Rothenberg and Barbie';
perl_version '5.006';
configure_requires 'CPANPLUS' => 0.88;
build_requires 'Test::More' => 0.47;
if ( can_use('CPANPLUS', 0.88 ) ) {
   require CPANPLUS::Backend;
   require CPANPLUS::Selfupdate;
   my $href = 
      CPANPLUS::Selfupdate->new(CPANPLUS::Backend->new())->modules_for_feature('cpantest',1);
   requires $_ => $href->{$_} for keys %$href;
}
requires 'version'  => '0.73';
requires 'CPANPLUS' => '0.88';
requires 'Module::Load::Conditional' => 0;
requires 'Params::Check' => 0;
requires 'SDBM_File' => 0;
requires 'File::Spec' => 0;
requires 'ExtUtils::ParseXS' => 0;
requires 'ExtUtils::CBuilder' => 0;
requires 'Module::Build' => 0.33;
requires 'CPANPLUS::Dist::Build' => 0.38;
requires 'IPC::Run' => 0 if win32;
makemaker_args(dist => { PREOP => "$^X ./tools/git-log.pl > ./Changes" });
clean_files 't/dummy-cpanplus';
auto_provides;
githubmeta;
install_script 'bin/yactool';
WriteAll();
