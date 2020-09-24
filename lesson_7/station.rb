require_relative 'instance_counter'
require_relative 'validate'

class Station
  NAME_FORMAT = /^[а-я]{3,}$/i
  include InstanceCounter

  attr_reader :trains, :name

  @@stations = []

  def self.all
    @@stations
  end

  def initialize(name)
    @name = name
    @trains = []
    @@stations.push(self)
    register_instance
  end

  def take_train(train)
    @trains.push(train)
  end

  def send_train(train)
    @trains.delete(train)
  end

  def each_train(block)
    @trains.each { |train| block.call train }
  end

   def trains_by_type(type)
     @trains.select { |train| train.type == type }
  end

  def validation!
    raise 'Название должно содержать как минимум 3 буквы русского алфавита' if @name !~ NAME_FORMAT
  end

end
