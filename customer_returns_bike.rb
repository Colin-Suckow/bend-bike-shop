require_relative 'bicycle_return_workflow'
require_relative 'bicycle'
require_relative 'rental'
require_relative 'rental_price'
test_bike = Bicycle.new(:performance)
rental_price = RentalPrice.new(10, 20)
test_rental = Rental.new(test_bike, 6, DateTime.now() - 1, rental_price) # Rented yesterday, returned today, 24 hours later
workflow = BicycleReturnWorkflow.new(test_rental)

workflow.run