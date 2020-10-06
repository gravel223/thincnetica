# frozen_string_literal: true

class PassengerWagon < Wagon
  extend Accessors
  include Validation


  alias seat_free free_capacity
  alias used_seats used_capacity

  validate :number_of_seats, :presence
  strong_attr_accessor :number_of_seats, Integer

  def initialize(number_of_seats)
    super(:passenger, number_of_seats)
  end
end
