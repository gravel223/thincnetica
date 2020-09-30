# frozen_string_literal: true

class PassengerTrain < Train
  def initialize(number)
    super(number, :passenger)
  end

  def attach_wagon(wagons)
    super(wagons) if wagons.passenger?
  end
end
