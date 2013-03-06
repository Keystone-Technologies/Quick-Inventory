package QI::Schema;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Schema';

__PACKAGE__->load_namespaces(
    default_resultset_class => 'ResultSet',
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-05 15:18:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:W+MWqsabxtppZq8W1ePLAw

__PACKAGE__->load_components(qw(Helper::Schema::ResultSet Helper::Schema::Mojolicious));

our $defaults = {
	year => ((localtime())[5])+1900,
	recent_years => 2,
};

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
