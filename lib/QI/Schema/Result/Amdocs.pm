package QI::Schema::Result::Amdocs;

use base 'QI::Schema::Result::Asset';

sub _search {
	my ($self, $rs, $req) = @_;
	#$rs->search_related('customer', {name=>'Amdocs'});
	$rs->search({customer_id=>1});
}

sub sold { shift->SUPER::sold ? 1 : 0 }

sub FROM_JSON { qw/tag parenttag customer.id customer.nameid received customer_tag serial_number asset_type.id asset_type.nameid manufacturer product model cond sold price change_stamp/ }

1;
