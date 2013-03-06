package QI::Schema::Result::BarcodeMap;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'QI::Schema::Result';


=head1 NAME

QI::Schema::Result::BarcodeMap

=cut

__PACKAGE__->table("barcode_map");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 map

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 comments

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "map",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "comments",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-05 15:18:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:67shALFJ7o9SOXCivt+JaQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
