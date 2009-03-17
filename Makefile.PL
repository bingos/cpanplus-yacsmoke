use 5.006;
use strict;
use inc::Module::Install;
name 'CPANPLUS-YACSmoke';
author 'Chris Williams <chris@bingosnet.co.uk>';
version_from 'lib/CPANPLUS/YACSmoke.pm';
abstract_from 'lib/CPANPLUS/YACSmoke.pm';
license 'perl';
perl_version '5.006';
build_requires 'Test::More' => 0.47;
requires 'YAML::Tiny' => 0;
requires 'Test::Reporter' => 1.4002;
requires 'version'  => '0.73';
requires 'CPANPLUS' => 0.84;
requires 'Module::Load::Conditional' => 0;
requires 'SDBM_File' => 0;
requires 'File::Spec' => 0;
requires 'Regexp::Assemble' => 0.34;
requires 'Config::IniFiles' => 2.38;
requires 'Sort::Versions' => 0;
eval "require Module::Build";
unless ($@) {
   requires 'Module::Build' => 0.30;
   requires 'CPANPLUS::Dist::Build' => 0.05;
}
WriteAll();
