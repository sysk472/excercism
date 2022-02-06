class AssemblyLine
  
  NUMBER_OF_CARS_PER_HOUR = 221
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    rate = case @speed
           when 1..4
             1
           when 5..8
             0.9
           when 9
             0.8
           when 10
             0.77
           end

    NUMBER_OF_CARS_PER_HOUR * @speed * rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
