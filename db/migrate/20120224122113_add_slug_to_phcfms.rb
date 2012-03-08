class AddSlugToPhcfms < ActiveRecord::Migration
  def change
    add_column :phcfms, :slug, :string
    add_index :phcfms, :slug, :unique => true
    add_column :events, :slug, :string
    add_index :events, :slug, :unique => true    
    add_column :abouts, :slug, :string
    add_index :abouts, :slug, :unique => true        
  end
end
