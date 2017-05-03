 require 'httparty'

 class EdamamApiWrapper
    BASE_URL = "https://api.edamam.com/search"
    ID = ENV["RECIPE_APP_ID"]
    TOKEN = ENV["RECIPE_KEY"]
 end
