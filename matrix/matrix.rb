class Matrix
  attr_reader :matrix

  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    matrix.split("\n").map do |num|
      num.split.map(&:to_i)
    end
  end

  def columns
    rows.transpose
  end
end