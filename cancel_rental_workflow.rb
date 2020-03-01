
def CancelRentalWorkflow

	attr_accessor :customer

	def initialize(customer)
		@customer = customer
	end

	def run

		puts "Hi #{test_customer.first}, which rental would you like to cancel?\n"

		for rental in test_customer.rental_list
			puts rental
		end

	end

end
