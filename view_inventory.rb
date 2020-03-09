# filename: view_inventory.rb

require_relative 'view_inventory_workflow.rb'
require_relative 'bicycle.rb'
require_relative 'rentable.rb'
require_relative 'inventory_list.rb'

inventory_list = InventoryList.new [ 
  Bicycle.new(:mountain),
  Bicycle.new(:mountain),
  Bicycle.new(:bmx),
  Bicycle.new(:road)
]

type = gets.chomp!.to_sym

if Bicycle::TYPES.include?(type)
  workflow = CustomerViewsBikesWorkflow.new(inventory_list, [type])
  workflow.run
else
  puts "Type not available"
end

