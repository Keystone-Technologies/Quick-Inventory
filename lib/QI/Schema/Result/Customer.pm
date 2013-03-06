package QI::Schema::Result::Customer;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'QI::Schema::Result';


=head1 NAME

QI::Schema::Result::Customer

=cut

__PACKAGE__->table("customers");

=head1 ACCESSORS

=head2 customer_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 revenue_percentage

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=cut

__PACKAGE__->add_columns(
  "customer_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "revenue_percentage",
  { data_type => "varchar", is_nullable => 1, size => 10 },
);
__PACKAGE__->set_primary_key("customer_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-05 15:18:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PsMESq+93EWbr0tvE4Kg+Q

sub id { shift->customer_id } 

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
