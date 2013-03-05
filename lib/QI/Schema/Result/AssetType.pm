use utf8;
package QI::Schema::Result::AssetType;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

QI::Schema::Result::AssetType

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<asset_types>

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

=head1 PRIMARY KEY

=over 4

=item * L</asset_type_id>

=back

=cut

__PACKAGE__->set_primary_key("asset_type_id");


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2013-03-04 16:39:43
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:CwkWS3EZJX+BdQ5eVtlQ0g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
