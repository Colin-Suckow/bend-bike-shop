class RentalPrice

	attr_accessor :late_fee, :hourly_price

	def initialize(hourly_price,late_fee)
		@hourly_price = hourly_price
		@late_fee = late_fee
	end

  def calculate_rental_price(hours, is_late)
      hours * @hourly_price + (is_late ? @late_fee : 0)
  end

  def change_hourly_price(desired_price)
  	@hourly_price = desired_price
  end

  def change_late_fee(desired_late_fee)
  	@late_fee = desired_late_fee
  end
  
end
