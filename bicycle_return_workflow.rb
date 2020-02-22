require 'date'

class BicycleReturnWorkflow

    def initialize(rental)
        @rental = rental
    end

    def calculate_hours_rented(checkout_time, return_time)
        (return_time.to_time.to_i - checkout_time.to_time.to_i) / 60 / 60
    end

    def calculate_rental_price(hours, price_per_hour, rental_duration, late_fee)
        hours * price_per_hour + (is_late?(hours, rental_duration) ? late_fee : 0)
    end

    def is_late?(hours, rental_duration)
        hours >= rental_duration
    end

    def run 
        hours_used = calculate_hours_rented(@rental.checkout_time, DateTime.now)
        total_price = calculate_rental_price(
            hours_used,
            @rental.calculate_price_per_hour(@rental.bike.type),
            @rental.duration_in_hours,
            @rental.late_fee
            )
        (is_late?(hours_used, @rental.duration_in_hours) ? (puts "Your bike is late!") : ())
        puts "The final bike price is: " + total_price.to_s
    end
end