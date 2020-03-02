class UpdatePrice

    def initialize(rental_price, new_hourly_price, new_late_fee)
    	@rental_price = rental_price
    	@new_hourly_price = new_hourly_price
    	@new_late_fee = new_late_fee
    end

    def run
    	puts "Original rental price: #{@rental_price.hourly_price}$ per hour.
    			\rOriginal late fee: #{@rental_price.late_fee}$."
    			
    	@rental_price.hourly_price = @new_hourly_price
    	@rental_price.late_fee = @new_late_fee

    	puts "New rental price: #{@rental_price.hourly_price}$ per hour.  
   				\rNew late fee: #{@rental_price.late_fee}$."

    end
end