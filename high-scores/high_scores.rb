class HighScores
  attr_reader :scores
  def initialize(scores)
    @scores = scores
  end

  def latest
    scores[-1]
  end

  def personal_best
    scores.max
  end

  def personal_top_three
    scores.max(3) { |a, b| a <=> b }
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end