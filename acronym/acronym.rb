class Acronym
  def self.abbreviate(content)
    content.split(/\W+/).map(&:chr).join.upcase
  end
end
