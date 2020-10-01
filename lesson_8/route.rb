# frozen_string_literal: true

require_relative 'instance_counter'
require_relative 'validate'

class Route
  include InstanceCounter
  include Validate

  attr_reader :name, :stations

  def initialize(_sourse, _destination)
    @source = begin_station
    @destination = end_station
    @stations = [@source, @destination]
    validate!
    @name = "#{@source.name.capitalize} - #{@destination.name.capitalize}"
    register_instance
  end

  def add(station)
    @stations.insert(-2, station)
  end

  def remove(station)
    first_last = [@stations.first, @stations.last]
    @stations.delete(station) if first_last.none?(station)
  end

  def route
    @stations.each { |station| puts station }
  end

  private

  attr_reader :begin_station, :end_station

  def validate!
    raise 'Недопустимая станция' unless source.is_a?(Station) && destination.is_a?(Station)
    raise 'Отправление и назначение совпадает' if source.eql?(destination)
  end
end
