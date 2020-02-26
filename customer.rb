class Customer

	def initialize(rental_list)
		@rental_list = rental_list
	end

	def add_rental(rental_id, rental)
		@rental_list[rental_id] = rental
	end

	def remove_rental(rental_id)
		@rental_list.delete(rental_id)
	end

end