require_relative 'rentable'
require_relative 'employee_updates_price_workflow'
require_relative 'bicycle'
require_relative 'rental_price'
require_relative 'kayak'
require_relative 'rental'

bike_price = RentalPrice.new(10, 20)
kayak_price = RentalPrice.new(35, 45)
test_bike = Bicycle.new(:mountain)
test_kayak = Kayak.new(:whitewater)
kayak_rental = Rental.new(3, test_kayak, 8, DateTime.now()-1, kayak_price )
bike_rental = Rental.new(2,test_bike, 6, DateTime.now() - 1, bike_price)
bike_workflow = UpdatePrice.new(bike_rental.rental_price, 15, 30)
kayak_worflow = UpdatePrice.new(kayak_rental.rental_price, 45,65)

bike_workflow.run
kayak_worflow.run