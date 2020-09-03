class CargoTrain < Train
  def initialize (number)
    super(number, :cargo)
  end

  def attach_wagon(wagons)
    super(wagons) if wagons.cargo?
  end

end
