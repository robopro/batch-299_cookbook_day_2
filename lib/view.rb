# VIEW
# Number FOUR
class View
  def display(recipes)
    print `clear`
    recipes.each_with_index do |recipe, index|
      # We can write our own #to_s method for our model.
      puts "#{index + 1}. #{recipe.to_s}"
      # puts "#{index + 1}. #{recipe.name} - #{recipe.description}"
    end
  end

  def ask_for(attribute)
    puts "What is the #{attribute} of the recipe?"
    return gets.chomp
  end

  # We refactored these.
  # def ask_for_name
  #   puts "What is the name of the recipe?"
  #   return gets.chomp
  # end

  # def ask_for_description
  #   puts "What is the description of the recipe?"
  #   return gets.chomp
  # end

  def ask_for_index
    puts "Give me a number!"
    return gets.chomp.to_i - 1
  end
end
