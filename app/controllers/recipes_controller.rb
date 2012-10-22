class RecipesController < ApplicationController
  def index
    @recipes = Recipe.order('id DESC').limit(20).all
  end

  def show
    @recipe = Recipe.find_by_key(params[:id])
  end
end
