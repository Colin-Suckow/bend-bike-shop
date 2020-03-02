require_relative 'bicycle_return_workflow'
require_relative 'bicycle'
require_relative 'rental'
test_bike = Bicycle.new(:performance)
test_rental = Rental.new(10, test_bike, 6, DateTime.now() - 1, 50) # Rented yesterday, returned today, 24 hours later
workflow = BicycleReturnWorkflow.new(test_rental)

workflow.run