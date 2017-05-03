require 'httparty'

class EdamamApiWrapper
    APP_ID = ENV["RECIPE_APP_ID"]
    APP_KEY = ENV["RECIPE_KEY"]
    BASE_URL = "https://api.edamam.com/search?"

    def self.getRecipes(search_item)
        # search_item = name
        url = BASE_URL + "q=#{search_item}" + "&app_id=#{APP_ID}&app_key=#{APP_KEY}"
        response = HTTParty.get(url).parsed_response["hits"]

        #create an array to store the recipes in
        @recipes = []

        response.each do |recipe|
            name = recipe["recipe"]["label"]
            image = recipe["recipe"]["image"]
            uri = recipe["recipe"]["uri"]
            new_recipe = Recipe.new(name, image,uri)

            @recipes << new_recipe
        end

        return @recipes
    end


    def self.showRecipe(search_item, name)
        url = BASE_URL + "q=#{search_item}" + "&app_id=#{APP_ID}&app_key=#{APP_KEY}&#{name}"
        recipe = HTTParty.get(url).parsed_response
    end
end
