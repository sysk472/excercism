class ResistorColorDuo
  BAND = {
    black:    0,
    brown:    1,
    red:      2,
    orange:   3,
    yellow:   4,
    green:    5,
    blue:     6,
    violet:   7,
    grey:     8,
    white:    9
  }

  def self.value(colors)
    new(colors).to_i
  end

  def initialize(colors)
    @colors = colors[0..1]
  end

  def to_i
    @colors.map do |color|
      BAND[color.to_sym]
    end.join.to_i
  end
end
