# filename: customer_views_bikes_workflow.rb

class CustomerViewsBikesWorkflow

  attr_accessor :bike_list

  def initialize(bike_list)
    @bike_list = bike_list
  end

  def filter_mtn
  end

  def filter_bmx
  end

  def filter_road
  end
  
end

class Bike
  def initialize(type)
    @type = type
  end
end