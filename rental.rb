require 'date'

class Rental

    attr_accessor :checkout_time, :duration_in_hours, :bike

    def initalize(bike, duration, checkout_time = DateTime.now(), late_fee)
        @checkout_time = checkout_time
        @bike = bike
        @duration_in_hours = duration
        @late_fee =late_fee
    end

end