#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;

my $min_version = '0.0104';
eval "use App::ZofCMS::Test::Plugin $min_version;";
plan skip_all
=> "App::ZofCMS::Test::Plugin $min_version required for testing plugin"
    if $@;

plugin_ok(
    'BreadCrumbs',
    {
        breadcrumbs => { 'foo' => 'bar' }
    },
    { dir => '/foo/bar', page => 'index' },
    { templates => 'foo/bar/' },
);