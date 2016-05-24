class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params.require(:recipe).permit(:name, :kitchen, :kind,
                                        :proferably, :serves, :preparation_time,
                                        :level, :ingredients, :step_by_step))
    if @recipe.save
      redirect_to @recipe
    else
      flash[:error] = 'Preencher os Campos Obrigatórios'
      render 'new'
    end

  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
