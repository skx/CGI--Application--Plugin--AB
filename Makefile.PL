
use strict;

use ExtUtils::MakeMaker;

my %prereq_pm = ( 'CGI::Application' => 0,
                  'Redis'            => 0,
                );
my %test_pm = (
               # solely for the test-suite.
               'Test::More'       => 0,
               'Test::Pod'        => 0,
               'Test::NoTabs'     => 0,
              );

WriteMakefile(
    NAME         => 'CGI::Application::Plugin::AB',
    VERSION_FROM => 'lib/CGI/Application/Plugin/AB.pm',
    PREREQ_PM    => \%prereq_pm,
    TEST_REQUIRES => \%test_pm,
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

