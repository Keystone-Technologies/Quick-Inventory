package QI;
use Mojo::Base 'Mojolicious';

# This method will run once at server start
sub startup {
	my $self = shift;

	$self = $self->moniker('qi');

	$self->plugin('Config');
	$self->plugin('Version');
	$self->plugin('Hypnotoad');
	$self->plugin('MergedParams');
	$self->plugin('DBIC' => {schema => 'QI::Schema'});
	$self->plugin('LogRequests');
	$self->plugin('WriteExcel');
	$self->plugin('HeaderCondition');
	$self->plugin('XHR');
	$self->plugin('AutoComplete');
	$self->plugin('Jqgrid');

	$self->setup_routing;

	$self->plugin('AutoRoute', {route => $self->routes});
}

sub setup_routing {
	my $self = shift;
	my $r = $self->routes;

	$r->get('/')->to('index#qi');

	$r->jqgrid([Assets => 'Asset']);
}

1;
