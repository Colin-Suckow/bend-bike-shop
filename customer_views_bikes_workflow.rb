# filename: customer_views_bikes_workflow.rb

class CustomerViewsBikesWorkflow

  attr_accessor :bike_list, :type

  def initialize(bike_list, type)
    @bike_list = bike_list
    @type = type
  end
  
  def run
    puts bike_list.of_type(type)
  end

end


