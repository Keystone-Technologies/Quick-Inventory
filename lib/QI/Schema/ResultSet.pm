package QI::Schema::ResultSet;

use base qw/DBIx::Class::ResultSet::HashRef DBIx::Class::ResultSet/;
__PACKAGE__->load_components(qw/Helper::ResultSet::Me Helper::ResultSet::Mojolicious Helper::ResultSet::Jqgrid/);

1;
