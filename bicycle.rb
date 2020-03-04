class Bicycle
  
  include Rentable

  TYPES = [:mountain, :bmx, :road]
  
  def to_s
    "Bicycle: #{type}" 
  end

end
