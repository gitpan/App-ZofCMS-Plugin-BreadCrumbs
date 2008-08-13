#!/usr/bin/env perl

use Test::More tests => 3;

BEGIN {
    use_ok('HTML::Template');
    use_ok('File::Spec::Functions');
	use_ok( 'App::ZofCMS::Plugin::BreadCrumbs' );
}

diag( "Testing App::ZofCMS::Plugin::BreadCrumbs $App::ZofCMS::Plugin::BreadCrumbs::VERSION, Perl $], $^X" );
