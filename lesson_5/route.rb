require_relative 'instance_counter'
class Route
  include InstanceCounter

  attr_reader  :name, :stations

  def initialize(begin_station, end_station)
    @stations = [begin_station, end_station]
    @name = "#{begin_station.name.capitalize} - #{end_station.name.capitalize}"
    register_instance
  end

  def add(station)
    @stations.insert(-2, station)
  end

  def remove(station)
    @stations.delete(station) if [@stations.first, @stations.last].none?(station)
  end

   def route
    @stations.each { |station| puts station }
  end

end

