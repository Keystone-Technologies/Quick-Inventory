package QI::Schema::Result::Cond;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'QI::Schema::Result';


=head1 NAME

QI::Schema::Result::Cond

=cut

__PACKAGE__->table("conds");

=head1 ACCESSORS

=head2 cond_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "cond_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);
__PACKAGE__->set_primary_key("cond_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-05 15:18:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:oHmjKzeWBoD9Q1nlp5w1AQ

__PACKAGE__->has_many(assets => 'QI::Schema::Result::Asset', 'cond_id');

sub id { shift->cond_id }

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
