use utf8;
package QI::Schema::Result::AssetVw;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

QI::Schema::Result::AssetVw - VIEW

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<asset_vw>

=cut

__PACKAGE__->table("asset_vw");

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

=head2 received

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 asset_type

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 manufacturer

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 product

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 model

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 location

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "tag",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 7 },
  "parenttag",
  { data_type => "varchar", is_nullable => 1, size => 7 },
  "received",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "asset_type",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "manufacturer",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "product",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "model",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "location",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2013-03-04 16:39:43
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DvFYP0rhAz7t7VUI/nFzgw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
