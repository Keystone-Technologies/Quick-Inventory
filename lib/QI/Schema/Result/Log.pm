use utf8;
package QI::Schema::Result::Log;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

QI::Schema::Result::Log

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<log>

=cut

__PACKAGE__->table("log");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 tag

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 who

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 field

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 previous

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 value

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 stamp

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "tag",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "who",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "field",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "previous",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "value",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "stamp",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2013-03-04 16:39:43
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:i3/XqI8ky5WQ7oIyX39Niw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
