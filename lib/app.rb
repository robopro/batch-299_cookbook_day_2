require_relative 'cookbook'    # You need to create this file!
require_relative 'controller'  # You need to create this file!
require_relative 'router'

csv_file   = File.join(__dir__, 'recipes.csv')
cookbook   = Cookbook.new(csv_file)
controller = Controller.new(cookbook)

router = Router.new(controller)

# Start the app
router.run

# ADDING MORE DATA TO OUR MODEL
# We want our recipes to have a rating.
# First we update our model and repository (cookbook)
  # F.ex. we add the @rate instance variable in the model
# Then we check if we need to update our routes
  # We don't, because this is not a new user action.
  # The user still can only list, create and destroy.
# We move on to the controller and see if anything needs to be updated.
  # Yes. The create method needs to ask the user for a rating, for example.
# Do we need to change anything in the view to make that work?
  # In our example, no. We need to update our #to_s method in the Recipe class.
# Is there anything left to do?
  # Not in our example!
# So we TEST THAT IT WORKS!!! ;P
