# filename: customer_reserves_bike.rb

require_relative 'customer_views_bikes_workFlow'
require_relative 'bicycle'
require_relative 'customer'

workflow = CustomerViewsBikesWorkflow.new ...

workflow.run

puts ...