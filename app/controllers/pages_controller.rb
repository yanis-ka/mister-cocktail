class PagesController < ApplicationController

  def home
    @ingredients = Ingredient.all
    @cocktails = Cocktail.all
  end
end
