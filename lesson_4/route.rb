class Route
  attr_reader :stations

  def initialize(begin_station, end_station)
    @stations = [begin_station, end_station]
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

