class UpdatePrice

    def initialize(rental_price, new_hourly_price, new_late_fee)
    	@rental_price = rental_price
    	@new_hourly_price = new_hourly_price
    	@new_late_fee = new_late_fee
    end

    def run
      puts "Displaying original hourly price and late fee... \n" + @rental_price.to_s
      puts "Updating hourly price and late fee..."		
    	@rental_price.change_hourly_price(@new_hourly_price)
    	@rental_price.change_late_fee(@new_late_fee)
      puts "Displaying updated price and late fee... \n" + @rental_price.to_s
    end
end