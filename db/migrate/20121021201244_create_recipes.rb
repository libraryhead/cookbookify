class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.references :user
      t.string :name, :null => false
      t.string :source_uri
      t.text :note 
      t.timestamps
    end
  end
end
