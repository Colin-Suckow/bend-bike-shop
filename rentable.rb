module Rentable

  attr_accessor :type

  def initialize(type)
    @type = type
  end
  
  def to_s
    raise "Function `to_s` must be defined in subclass." 
  end

end

