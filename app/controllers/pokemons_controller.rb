class PokemonsController < ApplicationController

  def capture
    poke = Pokemon.find(params[:id])
    poke.trainer = current_trainer
    poke.save()
    redirect_to '/'
  end

  def damage
    poke = Pokemon.find(params[:id])
    poke.health = poke.health - 10
    id = poke.trainer_id
    if poke.health <= 0
      poke.destroy()
    else
      poke.save()
    end
    redirect_to '/trainers/' + id.to_s
  end

  def new
    @newpokemon = Pokemon.new
  end

  def create
    poke = Pokemon.new
    poke.name = params[:pokemon][:name]
    poke.health = 100
    poke.level = 1
    poke.trainer = current_trainer
    if poke.valid?
      poke.save()
      redirect_to '/trainers/' + current_trainer.id.to_s
    else
      flash[:error] = poke.errors.full_messages.to_sentence
      redirect_to '/pokemons/new'
    end
  end

  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

end
