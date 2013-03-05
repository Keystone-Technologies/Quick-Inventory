use utf8;
package QI::Schema::Result::Asset;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

QI::Schema::Result::Asset

=cut

use strict;
use warnings;

=head1 BASE CLASS: L<QI::Schema::Result>

=cut

use base 'QI::Schema::Result';

=head1 TABLE: C<assets>

=cut

__PACKAGE__->table("assets");

=head1 ACCESSORS

=head2 tag

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 7

=head2 parenttag

  data_type: 'varchar'
  is_nullable: 1
  size: 7

=head2 customer_tag

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 customer_id

  data_type: 'integer'
  is_nullable: 1

=head2 received

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 serial_number

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 asset_type_id

  data_type: 'integer'
  is_nullable: 1

=head2 manufacturer

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 product

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 model

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 cond_id

  data_type: 'integer'
  is_nullable: 1

=head2 location_id

  data_type: 'integer'
  is_nullable: 1

=head2 qty

  data_type: 'integer'
  default_value: 1
  is_nullable: 1

=head2 status_id

  data_type: 'integer'
  is_nullable: 1

=head2 hipaa

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 hipaa_person

  data_type: 'integer'
  is_nullable: 1

=head2 sold_via_id

  data_type: 'integer'
  is_nullable: 1

=head2 buyer_id

  data_type: 'integer'
  is_nullable: 1

=head2 sold

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 billed

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 paid

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 customer_paid

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 shipped

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 price

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 related_expenses

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 revenue_percentage

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 comments

  data_type: 'varchar'
  is_nullable: 1
  size: 512

=head2 change_stamp

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 add_stamp

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "tag",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 7 },
  "parenttag",
  { data_type => "varchar", is_nullable => 1, size => 7 },
  "customer_tag",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "customer_id",
  { data_type => "integer", is_nullable => 1 },
  "received",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "serial_number",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "asset_type_id",
  { data_type => "integer", is_nullable => 1 },
  "manufacturer",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "product",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "model",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "cond_id",
  { data_type => "integer", is_nullable => 1 },
  "location_id",
  { data_type => "integer", is_nullable => 1 },
  "qty",
  { data_type => "integer", default_value => 1, is_nullable => 1 },
  "status_id",
  { data_type => "integer", is_nullable => 1 },
  "hipaa",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "hipaa_person",
  { data_type => "integer", is_nullable => 1 },
  "sold_via_id",
  { data_type => "integer", is_nullable => 1 },
  "buyer_id",
  { data_type => "integer", is_nullable => 1 },
  "sold",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "billed",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "paid",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "customer_paid",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "shipped",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "price",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "related_expenses",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "revenue_percentage",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "comments",
  { data_type => "varchar", is_nullable => 1, size => 512 },
  "change_stamp",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "add_stamp",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00 00:00:00",
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</tag>

=back

=cut

__PACKAGE__->set_primary_key("tag");


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2013-03-04 20:41:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4RvwtVZa13nQ7/7Ijt6b5w

__PACKAGE__->belongs_to(customer => 'QI::Schema::Result::Customer', 'customer_id', {join_type=>'left'});
__PACKAGE__->belongs_to(asset_type => 'QI::Schema::Result::AssetType', 'asset_type_id', {join_type=>'left'});
__PACKAGE__->belongs_to(cond => 'QI::Schema::Result::Cond', 'cond_id', {join_type=>'left'});
__PACKAGE__->belongs_to(buyer => 'QI::Schema::Result::Buyer', 'buyer_id', {join_type=>'left'});
__PACKAGE__->belongs_to(location => 'QI::Schema::Result::Location', 'location_id', {join_type=>'left'});
__PACKAGE__->belongs_to(sold_via => 'QI::Schema::Result::SoldVia', 'sold_via_id', {join_type=>'left'});
__PACKAGE__->belongs_to(status => 'QI::Schema::Result::Status', 'status_id', {join_type=>'left'});
sub id { shift->tag }

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
