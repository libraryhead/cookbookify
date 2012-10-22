class CreateRecipeSources < ActiveRecord::Migration
  def change
    create_table :recipe_sources do |t|
      t.string :name, :null => false
      t.string :source_uri
      t.string :key, :limit => 12
      t.text :note 
      t.timestamps
    end
    add_column :recipes, :recipe_source_id, :integer
    add_index :recipe_sources, :key, :unique => true
  end
end
