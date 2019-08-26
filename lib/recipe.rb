# MODEL
# Number ONE!
class Recipe
  def initialize(attributes = {})
    @name = attributes[:name]
    @description = attributes[:description]
    @rating = attributes[:rating] || 0
  end

  # The two methods below are examples of custom methods we can write to make our life easier.
  def to_s
    return "#{@name} - #{@description} : #{@rating}"
  end

  def to_csv
    return [@name, @description, @rating]
  end
end
