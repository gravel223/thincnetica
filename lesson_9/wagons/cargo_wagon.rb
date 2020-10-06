# frozen_string_literal: true

class CargoWagon < Wagon

  extend Accessors
  include Validation

  validate :volume, :presence
  strong_attr_accessor :volume, Integer

  def initialize(value)
    super(:cargo, value)
  end
end
