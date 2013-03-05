package QI::Schema::Result;

use base qw/DBIx::Class::Core/;
__PACKAGE__->load_components(qw/InflateColumn::DateTime Helper::Row::ToJSON::View/);

sub nameid { my $self = shift; join ':', $self->name, $self->id; }
sub _value { shift->value }

1;
