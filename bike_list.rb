

class BikeList

  attr_reader :bikes

  def initialize(list = [])
    @bikes = list
  end

  def of_type(type)
  	bikes.select { |bike| type.include?(bike.type) }
  	# result = []
  	# for bike in bikes
  	# 	if bike.category == category
  	# 		result += bike
  	# 	end
  	# end
  	# return result
  end

  def to_s
  	bikes.reduce('') do |result, bike|
  		result << bike.to_s << "\n"
  	end

  	# bikes.map(&:to_s).join("\n")

  	# bikes.map(&:to_s).to_s

  	# bikes.map do |bike|
  	# 	bike.to_s + "\n"
  	# end.to_s

  	# result = ""
  	# for bike in bikes
  	# 	result += bike.to_s + " \n"
  	# end
  	# return result
  end

end
