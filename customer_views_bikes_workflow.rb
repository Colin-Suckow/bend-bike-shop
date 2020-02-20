# filename: customer_views_bikes_workflow.rb

class CustomerViewsBikesWorkflow

  attr_accessor :bike_list, :category

  def initialize(bike_list, category)
    @bike_list = bike_list
    @category = category
  end
  
  def run
    puts bike_list.of_category(category)
  end

end


