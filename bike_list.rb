

class BikeList

  attr_reader :bikes

  def initialize(list = [])
    @bikes = list
  end

  def to_s
  	bikes.reduce('') do |result, bike|
  		result << bike.to_s << "\n"
  	end

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
