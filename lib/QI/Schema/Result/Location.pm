use utf8;
package QI::Schema::Result::Location;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

QI::Schema::Result::Location

=cut

use strict;
use warnings;

=head1 BASE CLASS: L<QI::Schema::Result>

=cut

use base 'QI::Schema::Result';

=head1 TABLE: C<locations>

=cut

__PACKAGE__->table("locations");

=head1 ACCESSORS

=head2 location_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 label

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=cut

__PACKAGE__->add_columns(
  "location_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "label",
  { data_type => "varchar", is_nullable => 1, size => 16 },
);

=head1 PRIMARY KEY

=over 4

=item * L</location_id>

=back

=cut

__PACKAGE__->set_primary_key("location_id");


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2013-03-04 20:41:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gdeiy0cOvD1nvxxFL4CvuA

__PACKAGE__->has_many(assets => 'QI::Schema::Result::Asset', 'location_id');
__PACKAGE__->has_many(inventory => 'QI::Schema::Result::Inventory', 'location_id');

use overload '""' => sub {shift->name}, fallback => 1;

sub id { shift->location_id }

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
