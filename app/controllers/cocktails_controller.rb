class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(task_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  private

  def task_params
    params.require(:cocktail).permit(:name)
  end
end
