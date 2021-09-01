package User;

#please update the below line 
#use lib 'C:\Users\xxxxxx\Downloads\assignment\assignment';
use Database;
sub new {
	my ($class, $args) = @_;
	my $self = {};
	$self->{cust_id} = $args->{custid} || die "customer id is needed";
	# add dbh to the object for db connections
	bless $self, $class;
	return $self;
}

#
# Validate user data and add a product.
#
sub AddProduct {
	my ($self, $args) = @_;
	$args->{cust_id}=$self->{cust_id};
	unless ($args->{prod_name} && $args->{domain_name} && $args->{start_date} && $args->{duration_months}){
		return false;
	}
	# product name, domain, startdate, duration
	my $staus = Database::Add($args);
	return $staus;
}

#
# Validate user data and delete a product.
#
sub DeleteProduct {
	my ($self, $args) = @_;
	$args->{cust_id}=$self->{cust_id};
	({prod_name=>"Domain",domain_name=>"xyzzy.com"});
	unless ($args->{prod_name} && $args->{domain_name}){
		return false;
	}
	# product name, domain
	my $staus = Database::Delete($args);
	return $staus;
}


#
# To List the products information.
#
sub ListProducts {
	my ($self) = @_;
	my $args->{cust_id}=$self->{cust_id};
	my $list = Database::getProducts($args);

	return $list;
}


1;