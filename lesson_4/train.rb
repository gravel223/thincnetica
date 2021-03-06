

class Train
  attr_reader :speed, :type, :wagons, :route, :station_index

  def initialize(number, type)
    @number = number
    @type = type
    @wagons = []
    @speed = init_speed
  end

  def gain_speed(value)
    @speed += value
  end

  def reset_speed(value)
    @speed = value < @speed ? @speed -= value : 0
  end

  def attach_wagon
    @wagons += 1 if stopped?
  end

  def detach_wagon
    @wagons.delete(wagon) if stopped? && !@wagons.empty?
  end

  def route=(route)
    @route = route
    @station_index = source_station_index
    current_station.take(self)
  end

  def current_station
    route.stations[@station_index]
  end

  def next_station
    route.stations[@station_index + 1] unless last_station?
  end

  def previous_station
    route.stations[@station_index - 1] unless first_station?
  end

  def forward
    return unless next_station
    current_station.send(self)
    next_station.take(self)
    @station_index += 1
  end

  def backward
    return unless previous_station
    current_station.send(self)
    previous_station.take(self)
    @station_index -= 1
  end

  def cargo?
    @type = :cargo
  end

  def passenger?
    @type = :passenger
  end

  ##
  # все классы ниже используются в подклассах, поэтому protected
  #  и вызываются из публичных метадов
  protected

  def init_speed
    0
  end

  def sourse_station_index
    0
  end

  def stopped?
    @speed.zero?
  end

  def first_station?
    current_station == route.stations.first
  end

  def last_station?
    current_station == route.stations.last
  end
end
