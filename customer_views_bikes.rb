# filename: customer_views_bikes.rb

require_relative 'customer_views_bikes_workflow.rb'
require_relative 'bike.rb'
require_relative 'bike_list.rb'

bike_list = BikeList.new [ 
  Bike.new(:mtn, bike_list),
  Bike.new(:bmx, bike_list),
  Bike.new(:road, bike_list)
]

workflow = CustomerViewsBikesWorkflow.new(bike_list)

workflow.run

