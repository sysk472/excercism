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
    @colors = colors.take(2).sum('') { |e| BAND[e.to_sym].to_s }
  end

  def to_i
    @colors.to_i
  end
end
