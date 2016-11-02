# Q0: Why is this error being thrown?

The NameError or uninitialized constant error occurred because there was no Pokemon model yet but the controller was trying to use the Pokemon model. There was also no Pokemon controller.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

They are random Pokemon without trainers. In the Home controller, there is this line: `trainerless_pokemon = Pokemon.where(trainer: nil)` which creates trainerless Pokemon. The common factor between all the Pokemon is that they are starters; in seeds.rb, they are listed.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

The line creates a functioning button that allows the trainer to capture the wild Pokemons that appear. On click, the button uses the line `capture_path(id: @pokemon)` to direct to the capture path defined in routes. The Pokemon's id is used. Then we go into the capture function in the Pokemon controller with the `pokemon#capture` line in routes.

# Question 3: What would you name your own Pokemon?

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I put `redirect_to trainer_path(pokemon_trainer)` into the redirect_to. The path needs the ID of the pokemon's trainer.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

The line `flash[:error] = @pokemon.errors.full_messages.to_sentence` flashes an error when the validations in pokemon.rb are false. The part of the line that says `full_messages.to_sentence` creates a sentence in a red box explaining the error. Without it, the name label would just turn red and there would be no full sentence explaining the error. Afterwards, `render 'new'` redirects back to the new.html.erb page, where the error is flashed.

# Give us feedback on the project and decal below!

It was fun and interesting. I learned a lot and got really familiar with the framework in this way. I actually know where to find files now hahaha. Plus, I'm more familiar with the typical routine needed to do certain things and which files will always need to be modified to do certain things. I'm also more familiar with models and migrations.

# Extra credit: Link your Heroku deployed app

https://pokeportal-go.herokuapp.com/