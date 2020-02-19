# filename: customer_views_bikes.rb

require_relative 'customer_views_bikes_workflow.rb'
require_relative 'Bike.rb'
require_relative 'bike_list.rb'

# bike_list = [Bike.new(:mtn), Bike.new(:bmx), Bike.new(:road)]

bike_list = BikeList.new()

bike_one = Bike.new(:mtn, bike_list)
bike_two = Bike.new(:bmx, bike_list)
bike_three = Bike.new(:road, bike_list)

workflow = CustomerViewsBikesWorkflow.new(bike_list)

workflow.run

