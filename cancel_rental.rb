require_relative 'rentable'
require_relative 'bicycle'
require_relative 'rental'
require_relative 'customer'
require_relative 'cancel_rental_workflow'

test_bike_1 = Bicycle.new(:mountain)
test_rental_1 = Rental.new(22, test_bike_1, 2, DateTime.now() + 3, 0) # Reserved for checkout

test_bike_2 = Bicycle.new(:bmx)
test_rental_2 = Rental.new(53, test_bike_2, 2, DateTime.now() + 3, 0) # Reserved for checkout

test_customer = Customer.new("john", "doe", {test_rental_1.id => test_rental_1, test_rental_2.id => test_rental_2})

workflow = CancelRentalWorkflow.new(test_customer)

workflow.run

