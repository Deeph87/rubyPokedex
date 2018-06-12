class PokemonsController < ApplicationController
  before_action :set_pokemon, only: %i[show edit update destroy]

  def index
    @pokemons = Pokemon.includes(:type)
  end

  def show; end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(
        pokemon_params
    )
    if @pokemon.save
      redirect_to @pokemon
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @pokemon.update(pokemon_params)
      redirect_to @pokemon
    else
      render 'edit'
    end
  end

  def destroy
    @pokemon.destroy
    redirect_to pokemons_url
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(
        :name,
        :level,
        :number,
        :health_points,
        :type_id
    )
  end

  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end
end