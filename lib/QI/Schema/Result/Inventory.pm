use utf8;
package QI::Schema::Result::Inventory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

QI::Schema::Result::Inventory

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<inventory>

=cut

__PACKAGE__->table("inventory");

=head1 ACCESSORS

=head2 tag

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 parenttag

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 asset_type_id

  data_type: 'integer'
  is_nullable: 1

=head2 equipment_condition

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 unit_price

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

=head2 location_id

  data_type: 'integer'
  is_nullable: 1

=head2 qty

  data_type: 'smallint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "tag",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "parenttag",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "description",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "asset_type_id",
  { data_type => "integer", is_nullable => 1 },
  "equipment_condition",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "unit_price",
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
  "location_id",
  { data_type => "integer", is_nullable => 1 },
  "qty",
  { data_type => "smallint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</tag>

=back

=cut

__PACKAGE__->set_primary_key("tag");


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2013-03-04 16:39:43
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:T779AWmAVMylGs8kKrGCmQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
