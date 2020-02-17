require 'date'

class Rental

    attr_accessor :checkout_time, :duration_in_hours

    def initalize(duration, checkout_time = DateTime.now())
        @checkout_time =  checkout_time
        @duration_in_hours = duration
    end

end