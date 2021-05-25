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

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.name.downcase!
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def find
    search = params['search'].capitalize
    @cocktails = Cocktail.all
      .joins(:ingredients)
      .where("ingredients.name LIKE '%#{search}%'")
    render :index, notice: search
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
