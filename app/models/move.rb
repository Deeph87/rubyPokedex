class Move < ApplicationRecord
  belongs_to :type, optional: true
  has_many :pokemon_moves, dependent: :destroy
  has_many :pokemons, through: :pokemon_moves
end
