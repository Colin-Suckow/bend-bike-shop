class BicycleReturnWorkflow

    def initalize(rental)
        @rental = rental
    end

    def calculate_hours_rented(checkout_time, return_time)
        ((return_time - checkout_time) / 3600).round
    end

    def run

    end
end