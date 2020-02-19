require 'date'

class Rental

    attr_accessor :checkout_time, :duration_in_hours, :bike

    def initalize(bike, duration, checkout_time = DateTime.now(), late_fee)
        @checkout_time = checkout_time
        @bike = bike
        @duration_in_hours = duration
        @late_fee = late_fee
    end

    def calculate_price_per_hour(bike_type)
    	
    	case bike_type
    	when :peformance
    		10
    	when :recreational
    		7
    	when :other
    		5
    	else 
    		puts "Invalid Bike entry" 
    		0
    	end
    end

end