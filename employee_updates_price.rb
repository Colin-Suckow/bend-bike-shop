require_relative 'employee_updates_price_workflow'
require_relative 'bicycle'
require_relative 'rental'
require_relative 'rental_price'

rental_price = RentalPrice.new(10, 20)
test_bike = Bicycle.new(:performance)
test_rental = Rental.new(test_bike, 6, DateTime.now()-1, rental_price)
workflow = UpdatePrice.new()

workflow.run