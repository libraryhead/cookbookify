class AddKeyToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :key, :string, :limit => 12 #,:null => false
    
    add_index :recipes, :key, :unique => true
  end
end
