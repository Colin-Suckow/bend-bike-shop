# filename: customer_views_bikes.rb

require_relative 'customer_views_bikes_workflow.rb'

bike_list = [Bike.new(:mtn), Bike.new(:bmx), Bike.new(:road)]

workflow = CustomerViewsBikesWorkflow.new(bike_list)

workflow.run

