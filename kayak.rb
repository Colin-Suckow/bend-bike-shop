class Kayak
  
  include Rentable

  TYPES = [:recreational, :whitewater, :sport]
  
  def to_s
    "Kayak: #{type}" 
  end

end
