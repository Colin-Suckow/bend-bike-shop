require_relative 'rentable'
require_relative 'employee_updates_price_workflow'
require_relative 'bicycle'
require_relative 'rental'
require_relative 'rental_price'
require_relative 'kayak'

bike_price = RentalPrice.new(10, 20)
kayak_price = RentalPrice.new(40, 60)
test_bike = Bicycle.new(:performance)
test_kayak = Kayak.new(:whitewater)
test_rental = Rental.new(2, test_bike, 6, DateTime.now()-1, bike_price)
test_kayak_rental = Rental.new(3, test_kayak, 8, DateTime.now()-1, kayak_price)
bike_workflow = UpdatePrice.new(bike_price, 35, 100)
kayak_worflow = UpdatePrice.new(kayak_price, 45,65)

bike_workflow.run
kayak_worflow.run