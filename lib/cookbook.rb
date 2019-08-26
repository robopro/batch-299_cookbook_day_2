# REPOSITORY
# Number TWO (for now dun dun DUN . . .)
require 'csv'
require_relative 'recipe'

class Cookbook
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @recipes = []
    load_from_csv
  end

  def all
    return @recipes
  end

  def add_recipe(recipe)
    @recipes << recipe
    save_to_csv
  end

  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
    save_to_csv
  end

  private

  def load_from_csv()
    csv_options = { headers: :first_row, header_converters: :symbol}
    CSV.foreach(@csv_file_path, csv_options) do |row|
      @recipes << Recipe.new(row)
    end
  end

  def save_to_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      csv << %w[name description rating]
      @recipes.each do |recipe|
        # We can write our own #to_csv method for our model
        csv << recipe.to_csv
        # csv << [recipe.name, recipe.description]
      end
    end
  end
end
