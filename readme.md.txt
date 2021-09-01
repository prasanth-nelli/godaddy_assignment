To-Do

#****************************************************************
#Very important to run the code
# PERL5LIB env variable for this code path or use use lib in code
#*****************************************************************

Assumptions:
# All data is fetched based on customerid. i.e a customer has list of products and is authorized to perform certain actions on those products
#Email Id and Email date is assumed to be updating by someother service.
# One customer is assumed to have multiple products ,Hence I used customerID to fetch /store data

mocks:
#Data base return values are mocked instead of using actual database