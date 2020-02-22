require 'date'

class BicycleReturnWorkflow

    def initialize(rental)
        @rental = rental
    end

    def calculate_hours_rented(checkout_time, return_time)
        (return_time.to_time.to_i - checkout_time.to_time.to_i) / 60 / 60
    end

    def calculate_rental_price(hours, price_per_hour)
        hours * price_per_hour
    end

    def run 
        total_price = calculate_rental_price(
            calculate_hours_rented(@rental.checkout_time, DateTime.now),
            @rental.calculate_price_per_hour(@rental.bike.type))
        puts "The final bike price is: " + total_price.to_s
    end
end