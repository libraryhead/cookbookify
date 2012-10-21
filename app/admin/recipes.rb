ActiveAdmin.register Recipe do
  before_filter do |controller|
    if controller.action_name.to_sym == :create
      params[:recipe][:user_id] = current_user.id
    end
  end
  
  filter :name
  filter :source_uri

  form do |f|
    f.inputs "Recipe Details" do
      f.input :name
      f.input :source_uri
      f.input :note
    end
    f.buttons
  end
end
