class MealsController < ApplicationController
  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(params.require(:meal).permit(:name))
    if @meal.save
      redirect_to @meal
    else
      flash[:error] = 'Preencher os Campos Obrigatórios'
      render 'new'
    end
  end

  def show
    @meal = Meal.find(params[:id])
  end
end
