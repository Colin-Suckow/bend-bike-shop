require_relative 'cancel_rental_workflow'

test_bike = Bicycle.new(:performance)
test_rental = Rental.new(test_bike, 2, DateTime.now() + 3, 0) # Reserved for checkout
john_doe = Customer.new({22 => test_rental})
workflow = CancelRentalWorkflow.new(john_doe)

workflow.run