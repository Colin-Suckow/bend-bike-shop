# filename: view_inventory_workflow.rb

class ViewInventoryWorkflow

  attr_accessor :inventory_list, :type

  def initialize(inventory_list, type)
    @inventory_list = inventory_list
    @type = type
  end
  
  def run
    puts inventory_list.of_type(type)
  end

end


