use utf8;
package QI::Schema::Result::Customer;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

QI::Schema::Result::Customer

=cut

use strict;
use warnings;

=head1 BASE CLASS: L<QI::Schema::Result>

=cut

use base 'QI::Schema::Result';

=head1 TABLE: C<customers>

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

=head1 PRIMARY KEY

=over 4

=item * L</customer_id>

=back

=cut

__PACKAGE__->set_primary_key("customer_id");


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2013-03-04 20:41:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5cMgovbSUge0onw0KYZBvA

sub id { shift->customer_id } 

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
