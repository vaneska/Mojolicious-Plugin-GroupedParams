use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Mojolicious::Plugin::GroupedParams',
    license             => 'perl',
    dist_author         => q{Ivan Sokolov <ivsokolov@cpan.org>},
    dist_version_from   => 'lib/Mojolicious/Plugin/GroupedParams.pm',
    build_requires => {
        'Test::More'  => 0,
        'Mojolicious' => 0.999950,
    },
    add_to_cleanup      => [ 'Mojolicious-Plugin-GroupedParams-*' ],
    create_makefile_pl => 'traditional',
    meta_merge => {
        repository => {
            type => 'git',
            url  => 'https://github.com/vaneska/Mojolicious-Plugin-GroupedParams.git',
            web  => 'https://github.com/vaneska/Mojolicious-Plugin-GroupedParams',
        },
        bugtracker => {
            web => 'https://github.com/vaneska/Mojolicious-Plugin-GroupedParams/issues',
        },
    },
);

$builder->create_build_script();
