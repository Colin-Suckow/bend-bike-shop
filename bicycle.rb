require_relative 'bike_list.rb'  

class Bicycle
  
  TYPES = [:mountain, :bmx, :road]

	attr_accessor :type

  def initialize(type)
    @type = type
  end
  
   def to_s
  	"Bike: #{type}" 
  end

end

