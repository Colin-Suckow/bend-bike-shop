require_relative 'bicycle_return_workflow'
require_relative 'bicycle'
require_relative 'rental'
test_bike = Bicycle.new(:performance)
rental_duration = 2 * 60 * 60
test_rental = Rental.new(test_bike, 6, rental_duration, 50)
workflow = BicycleReturnWorkflow.new(test_rental)

workflow.run