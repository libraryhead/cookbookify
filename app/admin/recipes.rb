ActiveAdmin.register Recipe do
  before_filter do |controller|
    if controller.action_name.to_sym == :create
      params[:recipe][:user_id] = current_user.id
    end
  end
  
  before_filter do |controller|
    @recipe = (Recipe.find_by_key(params[:id]) || Recipe.find(params[:id])) unless params[:id].blank?
  end

  filter :name
  filter :source_uri

  form do |f|
    f.inputs "Recipe Details" do
      f.input :name
      f.input :recipe_source
      f.input :source_uri
      f.input :note
    end
    f.buttons
  end
end
