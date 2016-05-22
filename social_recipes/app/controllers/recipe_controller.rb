class RecipeController < ApplicationController
  def new
    @recipe = Recipe.new
  end
end
