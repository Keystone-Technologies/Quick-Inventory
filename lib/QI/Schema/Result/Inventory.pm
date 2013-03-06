package QI::Schema::Result::Inventory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'QI::Schema::Result';


=head1 NAME

QI::Schema::Result::Inventory

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
__PACKAGE__->set_primary_key("tag");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-05 15:18:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:HImlJUbEJTSuscjmfzBIrg

__PACKAGE__->belongs_to(asset_type => 'QI::Schema::Result::AssetType', 'asset_type_id', {join_type=>'left'});
__PACKAGE__->belongs_to(location => 'QI::Schema::Result::Location', 'location_id', {join_type=>'left'});

use overload '""' => sub {shift->tag}, fallback => 1;

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
