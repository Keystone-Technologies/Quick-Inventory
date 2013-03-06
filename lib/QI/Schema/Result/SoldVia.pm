package QI::Schema::Result::SoldVia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'QI::Schema::Result';


=head1 NAME

QI::Schema::Result::SoldVia

=cut

__PACKAGE__->table("sold_via");

=head1 ACCESSORS

=head2 sold_via_id

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "sold_via_id",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);
__PACKAGE__->set_primary_key("sold_via_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-05 15:18:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jlo4c/0FO3TBY4GKgNo6og

__PACKAGE__->has_many(assets => 'QI::Schema::Result::Asset', 'sold_via_id');

use overload '""' => sub {shift->name}, fallback => 1;

sub id { shift->sold_via_id }

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
