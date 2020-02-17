require 'date'

class Rental

    attr_accessor :checkout_time, :duration_in_hours, :bike

    def initalize(bike, duration, checkout_time = DateTime.now())
        @checkout_time = checkout_time
        @bike = bike
        @duration_in_hours = duration
    end

end