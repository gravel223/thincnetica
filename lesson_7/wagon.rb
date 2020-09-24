require_relative 'validate'
require_relative 'company_name'

class Wagon
  include CompanyName
  include Validate

  attr_reader :type, :used_capacity

  def initialize(type, capacity)
    @type = type
    @capacity = capacity
    @used_capacity = 0
    validate!
  end

  def cargo?
    @type = :cargo
  end

  def passenger?
    @type = :passenger
  end

  def free_capacity
    @capacity - @used_capacity
  end

  def load_capacity!(count = 1)
    raise 'все занято' if @used_capacity == @capacity
    raise 'вагон занят' if count > free_capacity
    raise 'неверно указан тип! Используйте целые числа!' unless count.is_a? Integer
    @used_capacity += count
  end


  protected

  def validate!
    raise 'Неуказан тип вагона' if @type.nil?
    raise 'Неверный тип вагона' unless %i[cargo passenger].include?(@type)
  end
end
