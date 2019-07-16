class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new()
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    redirect_to cocktails_path
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    if @cocktail.destroy
      redirect_to cocktails_path
    else
      render :index
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :photo_cache)
  end
end
