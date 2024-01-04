use strict;
use warnings;

use 5.006;

use ExtUtils::MakeMaker;

my %WriteMakefileArgs = (
  "ABSTRACT" => "Method Extension port for perl",
  "AUTHOR" => "Tiago Peczenyj <tiago.peczenyj\@gmail.com>",
  "BUILD_REQUIRES" => {
    "Module::Build" => "0.28"
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0,
    "Module::Build" => "0.28"
  },
  "DISTNAME" => "Method-Extension",
  "LICENSE" => "mit",
  "MIN_PERL_VERSION" => "5.006",
  "NAME" => "Method::Extension",
  "PREREQ_PM" => {
    "Attribute::Handlers" => 0
  },
  "TEST_REQUIRES" => {
    "Test::More" => 0
  },
  "VERSION" => "0.1",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Attribute::Handlers" => 0,
  "Module::Build" => "0.28",
  "Test::More" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);
