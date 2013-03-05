use Mojo::Base -strict;

# Disable IPv6 and libev
BEGIN {
  $ENV{MOJO_MODE}    = 'development';
  $ENV{MOJO_NO_IPV6} = 1;
  $ENV{MOJO_REACTOR} = 'Mojo::Reactor::Poll';
}

use Test::More;
use Test::Mojo;

my $t = Test::Mojo->new('QI');

# NI: User Index page
$t->get_ok('/')->status_is(200)->content_like(qr/ok/i);

done_testing();
