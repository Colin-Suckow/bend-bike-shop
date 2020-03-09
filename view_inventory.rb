# filename: view_inventory.rb
require_relative 'rentable.rb'
require_relative 'bicycle.rb'
require_relative 'kayak'
require_relative 'inventory_list.rb'
require_relative 'view_inventory_workflow.rb'

inventory_list = InventoryList.new [ 
  Bicycle.new(:mountain),
  Bicycle.new(:mountain),
  Bicycle.new(:bmx),
  Bicycle.new(:road),
	Kayak.new(:whitewater),
	Kayak.new(:recreational),
	Kayak.new(:sport),
	Kayak.new(:sport),

]

puts"Do you want to rent a bike or a kayak?"
rentaltype = gets.chomp!

if rentaltype == "bike"

	puts"what kind of bikes do you want?"

	biketype = gets.chomp!.to_sym

	if Bicycle::TYPES.include?(biketype)
	  workflow = ViewInventoryWorkflow.new(inventory_list, [biketype])
	  workflow.run
	else
	  puts "Type not available"
	end
elsif rentaltype == "kayak"
	puts "what kind of kayak do you want?"

	kayaktype = gets.chomp!.to_sym
	if Kayak::TYPES.include?(kayaktype)
	  workflow = ViewInventoryWorkflow.new(inventory_list, [kayaktype])
	  workflow.run
	else
		puts "Type not available"
	end
else
	puts "we only rent bikes or kayaks"
end
