use utf8;
package QI::Schema::Result::SoldVia;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

QI::Schema::Result::SoldVia

=cut

use strict;
use warnings;

=head1 BASE CLASS: L<QI::Schema::Result>

=cut

use base 'QI::Schema::Result';

=head1 TABLE: C<sold_via>

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

=head1 PRIMARY KEY

=over 4

=item * L</sold_via_id>

=back

=cut

__PACKAGE__->set_primary_key("sold_via_id");


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2013-03-04 20:41:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ETTI0cSiwZ4+NoCrBxneWQ

__PACKAGE__->has_many(assets => 'QI::Schema::Result::Asset', 'sold_via_id');

use overload '""' => sub {shift->name}, fallback => 1;

sub id { shift->sold_via_id }

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
