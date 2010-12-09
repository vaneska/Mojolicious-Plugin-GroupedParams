#!perl

use Test::More tests => 3;

use FindBin '$Bin';
use lib "$Bin/../lib";

use Mojolicious::Lite;
use Test::Mojo;

use_ok('Mojolicious::Plugin::GroupedParams');

my $t = Test::Mojo->new;

plugin 'grouped_params';

get '/test' => sub {
    my ( $self ) = @_;

    my $p = $self->grouped_params('test');
    $self->render_text("$p->{key1}, $p->{key2}");    

};

$t->get_ok('/test?test.key1=value1&test.key2=value2')
    ->content_is('value1, value2');
