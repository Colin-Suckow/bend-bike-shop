class RentalPrice

	attr_accessor :lateFee, :hourlyPrice

	def initialize(hourlyPrice,lateFee)
		@hourlyPrice = hourlyPrice
		@lateFee = lateFee
	end

  def calculate_rental_price(hours, is_late)
      hours * @hourlyPrice + (is_late ? @lateFee : 0)
  end

end
