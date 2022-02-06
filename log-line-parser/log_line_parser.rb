class LogLineParser
  def initialize(line)
    @line = line.strip.squeeze(" ")
  end

  def message
    @line.gsub(/\[(WARNING|INFO|ERROR)\]\:/, '').strip
  end

  def log_level
    @line.match(/(WARNING|INFO|ERROR)/)[0].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
