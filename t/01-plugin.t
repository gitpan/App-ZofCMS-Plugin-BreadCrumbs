#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;

eval "use App::ZofCMS::Test::Plugin;";
plan skip_all
=> "App::ZofCMS::Test::Plugin required for testing plugin"
    if $@;

plugin_ok(
    'BreadCrumbs',
    {
        breadcrumbs => { 'foo' => 'bar' }
    },
    { dir => '/foo/bar', page => 'index' },
    { templates => 'foo/bar/' },
);