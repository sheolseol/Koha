package Koha::Schema::Result::DefaultBranchItemRule;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

Koha::Schema::Result::DefaultBranchItemRule

=cut

__PACKAGE__->table("default_branch_item_rules");

=head1 ACCESSORS

=head2 itemtype

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 10

=head2 holdallowed

  data_type: 'tinyint'
  is_nullable: 1

=head2 returnbranch

  data_type: 'varchar'
  is_nullable: 1
  size: 15

=cut

__PACKAGE__->add_columns(
  "itemtype",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 10 },
  "holdallowed",
  { data_type => "tinyint", is_nullable => 1 },
  "returnbranch",
  { data_type => "varchar", is_nullable => 1, size => 15 },
);
__PACKAGE__->set_primary_key("itemtype");

=head1 RELATIONS

=head2 itemtype

Type: belongs_to

Related object: L<Koha::Schema::Result::Itemtype>

=cut

__PACKAGE__->belongs_to(
  "itemtype",
  "Koha::Schema::Result::Itemtype",
  { itemtype => "itemtype" },
  { on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-09-02 08:44:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:N5e8mgI8+T/E4CchVMYIoQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;