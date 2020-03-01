class UpdatePrice

    def initialize(rentalPrice, newHourlyPrice, newLateFee)
    	@rentalPrice = rentalPrice
    	@newHourlyPrice = newHourlyPrice
    	@newLateFee = newLateFee
    end

    def run
    	current_hourly_price = @rentalPrice.hourlyPrice
    	current_late_fee = @rentalPrice.lateFee
    	puts "Original rental price: #{current_hourly_price}$ per hour.
    		 	\rOriginal late fee: #{current_late_fee}$."
    	current_hourly_price = @rentalPrice.hourlyPrice = @newHourlyPrice
    	current_late_fee = @rentalPrice.lateFee = @newLateFee
    	puts "New rental price: #{current_hourly_price}$ per hour.  
   				\rNew late fee: #{current_late_fee}$."	
    end
end