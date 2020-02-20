# filename: customer_views_bikes.rb

require_relative 'customer_views_bikes_workflow.rb'
require_relative 'bike.rb'
require_relative 'bike_list.rb'

bike_list = BikeList.new [ 
  Bike.new(:mtn),
  Bike.new(:bmx),
  Bike.new(:road)
]

workflow = CustomerViewsBikesWorkflow.new(bike_list)

workflow.run

