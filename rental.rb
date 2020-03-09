require 'date'

class Rental

  attr_accessor :id, :checkout_time, :duration_in_hours, :item, :rental_price

  def initialize(id, item, duration_in_hours, checkout_time = DateTime.now(), rental_price)
    @id = id
    @item = item
    @checkout_time = checkout_time
    @duration_in_hours = duration_in_hours
    @rental_price = rental_price
  end

  def calculate_price_per_hour(return_time)
      hours_rented = calculate_hours_rented(@checkout_time, return_time)
      @rental_price.calculate_rental_price(hours_rented, is_late?(hours_rented, @duration_in_hours))
  end

  private

  def calculate_hours_rented(checkout_time, return_time)
      (return_time.to_time.to_i - checkout_time.to_time.to_i) / 60 / 60
  end

  def is_late?(hours, rental_duration)
      hours >= rental_duration
  end

  def to_s
		"#{item}"
  end

end