require 'date'

class Rental

    attr_accessor :checkout_time, :duration_in_hours, :bike, :late_fee

    def initialize(bike, reserved_duration, checkout_time = DateTime.now(), rental_price)
        @checkout_time = checkout_time
        @bike = bike
        @duration_in_hours = reserved_duration
        @rental_price = rental_price
    end

    def calculate_price(return_time)
        hours_rented = calculate_hours_rented(@checkout_time, return_time)
        @rental_price.calculate_rental_price(hours_rented, is_late?(hours_rented, @duration_in_hours))
    end

    private

    def calculate_hours_rented(checkout_time, return_time)
        (return_time.to_time.to_i - checkout_time.to_time.to_i) / 60 / 60
    end

    def is_late?(hours, rental_duration)
        hours >= rental_duration
    end


end