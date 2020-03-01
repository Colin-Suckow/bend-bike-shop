class UpdatePrice

    def initialize(rental_price, new_hourly_price, new_late_fee)
    	@rental_price = rental_price
    	@new_hourly_price = new_hourly_price
    	@new_late_fee = new_late_fee
    end

    def run
    	current_hourly_price = @rental_price.hourly_price
    	current_late_fee = @rental_price.late_fee
    	puts "Original rental price: #{current_hourly_price}$ per hour.
    		 	\rOriginal late fee: #{current_late_fee}$."
    	current_hourly_price = @rental_price.hourly_price = @new_hourly_price
    	current_late_fee = @rental_price.late_fee = @new_late_fee
    	puts "New rental price: #{current_hourly_price}$ per hour.  
   				\rNew late fee: #{current_late_fee}$."	
    end
end