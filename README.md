# README

## Migration commands
* `rails generate migration CreatePokemons name:string`
* `rails db:create`
* `rails db:migrate`

## Insérer donnée en base 
* `rails console` -> on entre dans la console rails
* `pokemon = Pokemon.new(name: "Carapuce")`
* `pokemon.create`
* ||
* `Pokemon.create(name: "Carapuce")`
