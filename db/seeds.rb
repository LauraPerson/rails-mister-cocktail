require 'open-uri'
require 'json'

file = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
buffer = open(file).read

data = JSON.parse(buffer)

data["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end
