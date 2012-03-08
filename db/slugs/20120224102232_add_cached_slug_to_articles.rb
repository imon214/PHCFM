class AddCachedSlugToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :cached_slug, :string
    add_index :articles, :cached_slug, :unique => true
    add_column :comments, :cached_slug, :string
    add_index :comments, [:commentable_id, :cached_slug], :unique => true
#    add_index :comments, :cached_slug, :unique => true
  end
  
  def self.down
    remove_column :articles, :cached_slug
    remove_column :comments, :cached_slug
  end
end
