# Q0: Why is this error being thrown?
We haven't created the Pokemon model yet, so when we try calling Pokemon.where, it says Pokemon isn't initialized yet. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
In home_controller, we get the list of all pokemon that don't have a trainer. We then sample this list and display the pokemon.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
button_to generates a form containing a single button that submits to the URL created by capture_path(id: @pokemon). capture_path(id: @pokemon) is really the url "/:id". By having :method => :patch, we make it clear that this route is a patch. 

# Question 3: What would you name your own Pokemon?
Machu

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in trainer_path(current_trainer.id). The path needed to be trainer_path so that it would call the "/trainers/:id" route. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
At the bottom of views/layouts/application.html.erb, there is line that renders layout/messages. Inside layout/messages.html.erb, it iterates over every flash message and displays it in an alert box at the top of the page. 

# Give us feedback on the project and decal below!
Great project! Thanks for hosting the extra OH and helping me finish it. 

# Extra credit: Link your Heroku deployed app
