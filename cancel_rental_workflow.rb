class CancelRentalWorkflow

  attr_accessor :customer

  def initialize(customer)
    @customer = customer
  end

  def run
    puts "Hi #{customer.first}, which rental would you like to cancel?\n"
    for rental in customer.rental_list
      puts rental
    end

    customer.remove_rental(gets.chomp!.to_i)
    puts "\n"

    puts "Your remaining rentals:\n"
    for rental in customer.rental_list
      puts rental
    end
  end

end