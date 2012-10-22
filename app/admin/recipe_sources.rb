ActiveAdmin.register RecipeSource do
  
  before_filter do |controller|
    @recipe_source = (RecipeSource.find_by_key(params[:id]) || RecipeSource.find(params[:id])) unless params[:id].blank?
  end

  filter :name
  filter :source_uri

  form do |f|
    f.inputs "Recipe Source Details" do
      f.input :name
      f.input :source_uri
      f.input :note
    end
    f.buttons
  end
end
