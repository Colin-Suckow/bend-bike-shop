require_relative 'bike_list.rb'

class Bike

	CATEGORIES = [:mountain, :bmx, :road]

	attr_reader :category

  def initialize(category)
    @category = category
  end

  def to_s
  	"Bike: #{category}" 
  end

end
