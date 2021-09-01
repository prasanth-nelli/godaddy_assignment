package Database;
use strict;

# methods to interact with database;

sub Add {
	my ($args) = @_;
	print "adding record....\n";
	### query for addition
	return 1;
}

sub Delete {
	my ($args) = @_;
	print "deleting record....\n";
	### query for deletion
	return 1;
}

sub getProducts {
	my ($args) = @_;
	### query for listing
	my $list = [
		{
			ProductName => 'Domain',
			Domain => 'example.con',
			EmailDate => '2022-03-28
'
		},
		{
			ProductName => 'Hosting',
			Domain => 'example123.con',
			EmailDate => '2022-03-22'
		}	
	];
	return $list;
}

1;