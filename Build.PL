use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'App::ZofCMS::Plugin::BreadCrumbs',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/App/ZofCMS/Plugin/BreadCrumbs.pm',
    build_requires => {
        'Test::More' => 0,
    },
    build_recommends => {
        'App::ZofCMS::Test::Plugin' => 0.0104,
    },
    requires => {
        'HTML::Template'        => 2.9,
        'File::Spec::Functions' => 3.2701,
    },
    add_to_cleanup      => [ 'App-ZofCMS-Plugin-BreadCrumbs-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
