package QI::Schema::Result::AssetType;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'QI::Schema::Result';


=head1 NAME

QI::Schema::Result::AssetType

=cut

__PACKAGE__->table("asset_types");

=head1 ACCESSORS

=head2 asset_type_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "asset_type_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);
__PACKAGE__->set_primary_key("asset_type_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-05 15:18:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LiHaQ0EBisAA0cX74MB30w

__PACKAGE__->has_many(assets => 'QI::Schema::Result::Asset', 'asset_type_id');
__PACKAGE__->has_many(inventory => 'QI::Schema::Result::Inventory', 'asset_type_id');

sub id { shift->asset_type_id }

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
