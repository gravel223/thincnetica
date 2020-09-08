require_relative 'instance_counter'

class Station
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

   def trains_by_type(type)
     @trains.select { |train| train.type == type }
  end
end
