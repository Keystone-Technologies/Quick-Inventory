package QI::Schema::Result::Assets;

use base 'QI::Schema::Result::Asset';

#sub _search {
#	my ($self, $rs, $req) = @_;
#	$rs->search_related('customer', {name=>'Amdocs'});
#}

sub FROM_JSON { qw/tag parenttag customer.id customer.name received customer_tag serial_number asset_type.id asset_type.name manufacturer product model cond sold price change_stamp/ }

1;
