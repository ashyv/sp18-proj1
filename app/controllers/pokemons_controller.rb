class PokemonsController < ApplicationController
	def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer = current_trainer
		pokemon.save
		redirect_to root_path
	end

	def damage
		pokemon = Pokemon.find(params[:id])
		pokemon.health = pokemon.health - 10
		pokemon.save
		if pokemon.health <= 0
			pokemon.destroy
		end
		redirect_to trainer_path(current_trainer.id)
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		pokemon = Pokemon.create(pokemon_params[:pokemon])
		pokemon.name = params[:pokemon][:name]
		pokemon.ndex = params[:pokemon][:ndex]
		pokemon.health = 100
		pokemon.level = 1
		pokemon.trainer = current_trainer
		if pokemon.save
			redirect_to trainer_path(current_trainer.id)
		else
			redirect_to new_path
			flash[:error] = pokemon.errors.full_messages.to_sentence
		end
		
	end

	private 
		def pokemon_params
	      params.require(:pokemon).permit(:name, :ndex)
	    end

end