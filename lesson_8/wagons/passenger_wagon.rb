# frozen_string_literal: true

class PassengerWagon < Wagon
  alias seat_free free_capacity
  alias used_seats used_capacity
  def initialize(number_of_seats)
    super(:passenger, number_of_seats)
  end
end
