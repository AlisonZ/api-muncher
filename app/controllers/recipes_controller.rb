require 'edamam_api_wrapper'

class RecipesController < ApplicationController

    def index
        @recipes = EdamamApiWrapper.getRecipes(params[:search])
        @recipes_paginate = @recipes.paginate(:page => params[:page], :per_page => 10)
    end

    def show
        #not sure about this param
        @recipe = EdamamApiWrapper.showRecipe(params[:uri])
    end
end
