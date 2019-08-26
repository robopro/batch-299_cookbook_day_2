# CONTROLLER
# Number THREE
require_relative 'view'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    recipes = @cookbook.all
    @view.display(recipes)
  end

  def create
    name = @view.ask_for("name")
    description = @view.ask_for("description")
    rating = @view.ask_for("rating")

    recipe = Recipe.new(name: name, description: description, rating: rating)
    @cookbook.add_recipe(recipe)
  end

  def destroy
    list
    index = @view.ask_for_index
    @cookbook.remove_recipe(index)
  end
end
