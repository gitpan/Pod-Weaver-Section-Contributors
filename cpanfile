requires "Dist::Zilla::Role::Stash::Plugins" => "0";
requires "List::MoreUtils" => "0";
requires "Moose" => "0";
requires "Moose::Autobox" => "0";
requires "Pod::Elemental::Element::Nested" => "0";
requires "Pod::Elemental::Element::Pod5::Verbatim" => "0";
requires "Pod::Weaver::Role::Section" => "0";

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "6.30";
};

on 'develop' => sub {
  requires "Pod::Coverage::TrustPod" => "0";
  requires "Test::Pod" => "1.41";
  requires "Test::Pod::Coverage" => "1.08";
};
