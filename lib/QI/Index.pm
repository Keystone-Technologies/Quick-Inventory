package QI::Index;
use Mojo::Base 'Mojolicious::Controller';

sub qi {
	my $self = shift;
	$self->render_text('ok');
}

1;
