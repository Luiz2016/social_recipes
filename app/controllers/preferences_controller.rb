class PreferencesController < ApplicationController
  def new
    @preference = Preference.new
  end

  def create
    @preference = Preference.new(params.require(:preference).permit(:name))
    if @preference.save
      redirect_to @preference
    else
      flash[:error] = 'Preencher os Campos Obrigatórios'
      render 'new'
    end
  end

  def show
    @preference = Preference.find(params[:id])
  end
end
