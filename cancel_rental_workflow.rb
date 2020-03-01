
class CancelRentalWorkflow

  attr_accessor :customer

  def initialize(customer)
    @customer = customer
  end

  def run
    puts "Hi #{customer.first}, which rental would you like to cancel?\n"
    customer.rental_list.each do |key, value|
      puts "ID: #{key} \t #{value}"
    end

    customer.remove_rental(gets.chomp!.to_i)
    puts "\n"

    puts "Your remaining rentals:\n"
    
    customer.rental_list.each do |key, value|
      puts "ID: #{key} \t #{value}"
    end

  end

end

