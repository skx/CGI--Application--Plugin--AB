
use strict;

use ExtUtils::MakeMaker;

my %prereq_pm = ( 'CGI::Application' => undef,
                  'Redis'            => undef,
                  # solely for the test-suite.
                  'Test::More'       => undef,
                  'Test::Pod'        => undef,
                  'Test::NoTabs'     => undef,
                );

WriteMakefile(
    NAME         => 'CGI::Application::Plugin::AB',
    VERSION_FROM => 'lib/CGI/Application/Plugin/AB.pm',
    PREREQ_PM    => \%prereq_pm,
    ABSTRACT     => 'A/B testing for CGI::Application-based applications.',
    AUTHOR       => 'Steve Kemp <steve@steve.org.uk>',


    META_MERGE => {
        resources => {
            license    => 'http://dev.perl.org/licenses/',
            homepage   => 'https://github.com/skx/CGI--Application--Plugin--AB/',
            bugtracker => 'https://github.com/skx/CGI--Application--Plugin--AB/issues',
            repository => 'https://github.com/skx/CGI--Application--Plugin--AB.git',
                     },
                  },
             );

