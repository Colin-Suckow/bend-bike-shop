# filename: customer_views_bikes_workflow.rb

class CustomerViewsBikesWorkflow

  attr_accessor :bike_list, :mtn_bike, :bmx_bike, :road_bike

  def initialize(bike_list, mtn_bike = false, bmx_bike = false, road_bike = false)
    @bike_list = bike_list
    @mtn_bike = mtn_bike
    @bmx_bike = bmx_bike
    @road_bike = road_bike
  end

  def no_filter()
    if mtn_bike == false && bmx_bike == false && road_bike == false
      mtn_bike = true
      bmx_bike = true
      road_bike = true
    end
  end

  def filter_mtn()
    # TODO
  end

  def filter_bmx()
    # TODO
  end

  def filter_road()
    # TODO
  end
  
  def run

    no_filter()

    if mtn_bike == false
      filter_mtn()
    end

    if bmx_bike == false
      filter_bmx()
    end

    if road_bike == false
      filter_road()
    end

    puts bike_list

  end

end

class Bike
  def initialize(type)
    @type = type
  end
end
