package QI::Schema::Result::Amdocs;

use base 'QI::Schema::Result::Asset';

# The columns to be rendered
sub FROM_JSON { qw/tag parenttag customer.id customer.nameid received customer_tag customer_retired serial_number asset_type.id asset_type.nameid manufacturer product model cond sold price change_stamp/ }

# The columns to be rendered as special accessor methods
sub received { shift->SUPER::received->ymd }
sub sold { shift->SUPER::sold ? 1 : 0 }

# These class methods are passed $rs, $request
sub _create { $_[1] };
sub _search { $_[1]->search({'customer.name'=>'Amdocs'}) };
sub _update { $_[1] };
sub _delete { $_[1] };

# The relationships associated with this result (table)
our $relationships = [qw/customer asset_type/];

# When reading (i.e. searching or ordering), use this hashref to lookup references (scalar) or use mysql functions (scalarref)
# As a special case, if an arrayref is provided, index [0] is provided for search routines and index [1] is provided for ordering routines.
# If not an arrayref then the same handler is used for both search and ordering.
# if a coderef is provided, pass a hashref of the search condition to search or nothing to ordering.  Expects a fully formulated SQL::Abstract ref.
our $read = {
	'id' => 'tag',
	'customer.nameid' => 'customer.name',
	'asset_type.nameid' => 'asset_type.name',
	'price' => \'cast(price as decimal(7,2))',
	'sold' => [sub {
		my $op = shift;
		return sold => {$op->{string} =~ /^(y|yes|t|true|1)$/i ? ('!=' => undef) : ('=' => undef)};
	}],
	'customer_retired' => [sub {
		my $op = shift;
		return customer_retired => {$op->{op} => $op->{string} =~ /^(y|yes|t|true|1)$/i ? 1 : $op->{string} =~ /^(n|no|f|false|0)$/i ? [0,undef] : $op->{string}};
	}],
};
# When editing (i.e. creating or updating), use this hashref to lookup coderefs and pass the value to provide and expect back a full hash of key/value pairs.
our $edit = { # Subs only.  Passes value and returns hash of k/v
	'customer.nameid' => sub {
		my ($name, $id) = (shift =~ /(.*?):([^:]+)$/);
		return customer_id => $id, 'customer.name' => $name;
	},
};
# For each field being edited (i.e. created or updated) validate the value with the qr regex in this hashref
our $validate = { # Validate on update or create
	'parenttag' => [qr/^\d{6}[A-Z]$/ => 'Not a valid tag format'],
};

1;
