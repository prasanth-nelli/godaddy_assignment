#!/usr/local/bin/perl

use strict;
#please update the below line 
#use lib 'C:\Users\xxxxxx\Downloads\assignment\assignment';
use User;
use Data::Dumper;

#Creating a on obeject
my $user = User->new({custid => 1234});

#To add a product
$user->AddProduct({"prod_name"=>"Domain","domain_name"=>"xyzzy.com","start_date"=>"01-01-2021","duration_months"=>12});

#To delete a product
$user->DeleteProduct({"prod_name"=>"Domain","domain_name"=>"xyzzy.com"});

#To List the products
my $list = $user->ListProducts();
print Dumper($list);