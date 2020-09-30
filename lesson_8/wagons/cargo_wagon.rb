# frozen_string_literal: true

class CargoWagon < Wagon
  def initialize(value)
    super(:cargo, value)
  end
end
