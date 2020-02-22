# filename: customer_views_bikes.rb

require_relative 'customer_views_bikes_workflow.rb'
require_relative 'bicycle.rb'
require_relative 'bike_list.rb'

bike_list = BikeList.new [ 
  Bicycle.new(:mountain),
  Bicycle.new(:mountain),
  Bicycle.new(:bmx),
  Bicycle.new(:road)
]

category = gets.chomp!.to_sym

if Bicycle::TYPES.include?(category)
  workflow = CustomerViewsBikesWorkflow.new(bike_list, [category])
  workflow.run
else
  puts "category not available"
end

