# Q0: Why is this error being thrown?

We don't have a PokemonController (it would be in a file `pokemons_controller.rb`). We also don't even have a Pokemon model.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

The random Pokemon are appearing because in `home_controller.rb`, a random wild Pokemon from the db is assigned to the @pokemon variable. It then "appears" along with some text in `views/home/index.html.erb`. The common factor between all these Pokemon is that they are wild, i.e. they don't belong to any trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

This button patches (updates the info of) the trainer and Pokemon in question by assigning the Trainer and vice versa. "button_to" defaults to a POST request. "capture_path(id: @pokemon)" gets the id of the Pokemon and assigns it to the trainer logged in.

# Question 3: What would you name your own Pokemon?

Pikafoo, or Bartortle.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed a path to the trainer's profile page. The path needed the id of the trainer to redirect back to their profile page; i concatenated it with '/trainers/' to go to their specific page.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

There is a set of error messages in 'layouts' which gets accessed by this line and is flashed accordingly. We put it in the line before we redirect so that it flashes the error on 'pokemons/new'

# Give us feedback on the project and decal below!

Interesting project.

# Extra credit: Link your Heroku deployed app

# LINK TO REPO:

https://github.com/nkhatore/proj1.git
