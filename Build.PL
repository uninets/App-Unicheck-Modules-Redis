use 5.006;
use strict;
use warnings FATAL => 'all';
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'App::Unicheck::Modules::Redis',
    license             => 'artistic_2',
    dist_author         => q{Matthias Krull <<m.krull@uninets.eu>>},
    dist_version_from   => 'lib/App/Unicheck/Modules/Redis.pm',
    configure_requires => {
        'Module::Build' => 0,
    },
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Moo' => 0,
        'perl' => '5.10.1',
        'Redis' => 0,
        'JSON' => 0,
    },
    add_to_cleanup     => [ 'App-Unicheck-Modules-Redis-* Build _build MYMETA.*' ],
    create_makefile_pl => 'traditional',

    meta_add => {
        no_index => { directory => ['t'] },
        release_status      => 'unstable',
    },
    meta_merge => {
        resources => {
            repository => 'https://github.com/uninets/App-Unicheck-Modules-Redis',
        }
    }
);

$builder->create_build_script();
