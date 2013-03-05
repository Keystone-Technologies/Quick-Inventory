package QI::Schema::Result::Assets;

use base 'QI::Schema::Result::Asset';

sub _search {
	my ($self, $rs, $req) = @_;
	$rs;
}

sub TO_VIEW { qw/tag manufacturer product model customer.id customer.name/ }

1;
