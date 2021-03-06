require_relative 'validate'
require_relative 'company_name'

class Wagon
  include CompanyName
  include Validate

  attr_reader :type

  def initialize(type)
    @type = type
    validate!
  end

  def cargo?
    @type = :cargo
  end

  def passenger?
    @type = :passenger
  end


  protected

  def validate!
    raise 'Неуказан тип вагона' if @type.nil?
    raise 'Неверный тип вагона' unless %i[cargo passenger].include?(@type)
  end
end
