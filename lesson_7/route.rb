require_relative 'instance_counter'
require_relative 'validate'


class Route
  include InstanceCounter

  attr_reader  :name, :stations

  def initialize(begin_station, end_station)
    @begin_station = begin_station
    @end_station = end_station
    @stations = [begin_station, end_station]
    validate!
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

  private

  attr_reader :begin_station, :end_station

   def validate!
    raise 'Недопустимая станция' unless @source.is_a?(Station) && @destination.is_a?(Station)
    raise 'Пункты отправления и назначения не могут совпадать' if @source.eql?(@destination)
  end

end

