class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
  if @recipe.save
      redirect_to @recipe
  else
      flash[:warning] = 'Warning! All fields are mandatory.'
      render :new
  end
end
end
