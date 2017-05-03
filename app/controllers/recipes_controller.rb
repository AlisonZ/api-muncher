require 'edamam_api_wrapper'

class RecipesController < ApplicationController

    def index
        @recipes = EdamamApiWrapper.getRecipes(params[:search])
    end

    def show
        #not sure about this param
        @recipe = EdamamApiWrapper.showRecipe(params[:uri])
    end
end
