# filename: customer_views_bikes.rb
require_relative 'rentable'
require_relative 'customer_views_bikes_workflow.rb'
require_relative 'bicycle.rb'
require_relative 'bike_list.rb'

bike_list = BikeList.new [ 
  Bicycle.new(:mountain),
  Bicycle.new(:mountain),
  Bicycle.new(:bmx),
  Bicycle.new(:road)
]

type = gets.chomp!.to_sym

if Bicycle::TYPES.include?(type)
  workflow = CustomerViewsBikesWorkflow.new(bike_list, [type])
  workflow.run
else
  puts "Type not available"
end

