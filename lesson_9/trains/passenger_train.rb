# frozen_string_literal: true

class PassengerTrain < Train

  attr_accessor_with_history :route

  validate :number, :presence
  validate :number, :format, NUMBER_FORMAT

  def initialize(number)
    super(number, :passenger)
  end

  def attach_wagon(wagons)
    super(wagons) if wagons.passenger?
  end
end
