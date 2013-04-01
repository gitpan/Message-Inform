use 5.006;
use strict;
use warnings FATAL => 'all';
use inc::Module::Install;

name     'Message-Inform';
all_from 'lib/Message/Inform.pm';
author   q{Dana M. Diederich <diederich@gmail.com>};
license  'artistic2';

perl_version 5.006;

tests_recursive('t');

resources (
   homepage   => 'https://metacpan.org/module/Message::Inform',
   #IRC        => 'irc://irc.perl.org/#Message-Inform',
   license    => 'http://www.perlfoundation.org/artistic_license_2_0',
   repository => 'git://github.com/dana/perl-Message-Inform.git',
   bugtracker => 'https://github.com/dana/perl-Message-Inform/issues',
);

configure_requires (
   'Module::Install' => 0,
);

build_requires (
   'Test::More' => 0,
   'Message::Match' => 0,
   'Message::Transform' => 0,
);

requires (
   'Message::Match' => 0,
   'Message::Transform' => 0,
);

install_as_cpan;
auto_install;
WriteAll;
