class PokemonController < ApplicationController

	def capture
		@pokemon = Pokemon.find(params[:id]) # get pokemon by id
		@pokemon.trainer = current_trainer # set pokemon's trainer to be current trainer
		@pokemon.save # save last line's changes to pokemon
		redirect_to root_path # redirect to home page
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health -= 10
		@pokemon.save
		pokemon_trainer = @pokemon.trainer
		if @pokemon.health <= 0
			@pokemon.destroy
		end
		redirect_to trainer_path(pokemon_trainer)
	end

	def new # function the form is for
		@pokemon = Pokemon.new
	end

	def create # form action, the path the button links to when submitting form
		@pokemon = Pokemon.new(pokemon_params)
		@pokemon.level = 1
		@pokemon.health = 100
		@pokemon.trainer = current_trainer
		if @pokemon.save
			redirect_to trainer_path(current_trainer)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			render 'new' # redirects back to the create /pokemons page but with error sentence
		end
	end

	def pokemon_params
		params.require(:pokemon).permit(:name)
	end

end
