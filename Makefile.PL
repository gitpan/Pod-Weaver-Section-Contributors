
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "a section listing contributors",
  "AUTHOR" => "Keedi Kim - \x{ae40}\x{b3c4}\x{d615} <keedi\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Pod-Weaver-Section-Contributors",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Pod::Weaver::Section::Contributors",
  "PREREQ_PM" => {
    "Dist::Zilla::Role::Stash::Plugins" => 0,
    "List::MoreUtils" => 0,
    "Moose" => 0,
    "Moose::Autobox" => 0,
    "Pod::Elemental::Element::Nested" => 0,
    "Pod::Elemental::Element::Pod5::Verbatim" => 0,
    "Pod::Weaver::Role::Section" => 0
  },
  "TEST_REQUIRES" => {},
  "VERSION" => "0.007",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Dist::Zilla::Role::Stash::Plugins" => 0,
  "List::MoreUtils" => 0,
  "Moose" => 0,
  "Moose::Autobox" => 0,
  "Pod::Elemental::Element::Nested" => 0,
  "Pod::Elemental::Element::Pod5::Verbatim" => 0,
  "Pod::Weaver::Role::Section" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



