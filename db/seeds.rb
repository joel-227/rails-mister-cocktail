require 'open-uri'
Ingredient.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
json = JSON.parse(open(url).read)

json["drinks"].each do |drink|
  name = drink["strIngredient1"]
  Ingredient.create!(name: name)
end
