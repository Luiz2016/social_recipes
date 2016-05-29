class KitchensController < ApplicationController
  def new
    @kitchen = Kitchen.new
  end

  def create
    @kitchen = Kitchen.new(params.require(:kitchen).permit(:name))
    if @kitchen.save
      redirect_to @kitchen
    else
      flash[:error] = 'Preencher os Campos Obrigatórios'
      render 'new'
    end
  end

  def show
    @kitchen = Kitchen.find(params[:id])
  end
end
