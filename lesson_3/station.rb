class Station

   TYPE = %i[passanger cargo].freeze
  attr_reader :trains, :name

  def initialize(name)
    @name = name
    @trains = []
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
