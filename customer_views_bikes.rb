# filename: customer_views_bikes.rb

require_relative 'customer_views_bikes_workflow.rb'
require_relative 'bike.rb'
require_relative 'bike_list.rb'

bike_list = BikeList.new [ 
  Bike.new(:mountain),
  Bike.new(:bmx),
  Bike.new(:road)
]

# category = gets.chomp!.to_sym

# Bike::CATEGORIES


workflow = CustomerViewsBikesWorkflow.new(bike_list, [:bmx, :mountain])

workflow.run

