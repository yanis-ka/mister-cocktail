class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    cocktail = Cocktail.find(params[:id])
    cocktail.name.capitalize!
    @cocktail = cocktail
    @dose = Dose.new
  end



   private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
