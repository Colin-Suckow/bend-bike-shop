class Kayak
  
  include Rentable

  TYPES = []
  
  def to_s
    "Kayak: #{type}" 
  end

end
