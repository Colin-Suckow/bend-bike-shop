

class InventoryList

  attr_reader :inventory

  def initialize(list = [])
    @inventory = list
  end

  def of_type(type)
  	inventory.select { |rentable| type.include?(rentable.type) }
  	# result = []
  	# for rentable in inventory
  	# 	if rentable.category == category
  	# 		result += rentable
  	# 	end
  	# end
  	# return result
  end

  def to_s
  	inventory.reduce('') do |result, rentable|
  		result << rentable.to_s << "\n"
  	end

  	# inventory.map(&:to_s).join("\n")

  	# inventory.map(&:to_s).to_s

  	# inventory.map do |rentable|
  	# 	rentable.to_s + "\n"
  	# end.to_s

  	# result = ""
  	# for rentable in inventory
  	# 	result += rentable.to_s + " \n"
  	# end
  	# return result
  end

end
