package WWW::FatPacked;
# ABSTRACT: http://fatpacked.pl
use strictures 1;
use File::ShareDir qw[ dist_dir ];
use File::Spec;
use YAML;

our $VERSION = '0.5';

$VERSION = eval $VERSION;

my $dist_dir = dist_dir("WWW-FatPacked");

use Moose;
extends 'Catalyst';

use YAML;

my $class = __PACKAGE__;



$class->config(
    YAML::LoadFile(
        File::Spec->catfile( $dist_dir, 'fatpacked.pl.yml' ) ) );

$class->setup;

$class->meta->make_immutable;

1;
