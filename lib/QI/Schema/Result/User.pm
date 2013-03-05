use utf8;
package QI::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

QI::Schema::Result::User

=cut

use strict;
use warnings;

=head1 BASE CLASS: L<QI::Schema::Result>

=cut

use base 'QI::Schema::Result';

=head1 TABLE: C<users>

=cut

__PACKAGE__->table("users");

=head1 ACCESSORS

=head2 username

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "username",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2013-03-04 20:41:45
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DqU8z0IvxdK0RSbkpl4vwA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
