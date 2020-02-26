require 'date'

class BicycleReturnWorkflow

    def initialize(rental)
        @rental = rental
    end

    def run 
        total_price = @rental.calculate_price(DateTime.now)
        #(is_late?(hours_used, @rental.duration_in_hours) ? (puts "Your bike is late!") : ())
        puts "The final bike price is: " + total_price.to_s
    end
end