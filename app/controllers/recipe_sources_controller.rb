class RecipeSourcesController < ApplicationController
  def index
    @recipe_sources = RecipeSource.order('id DESC').limit(20).all
  end

  def show
    @recipe_source = RecipeSource.find_by_key(params[:id])
  end
end
