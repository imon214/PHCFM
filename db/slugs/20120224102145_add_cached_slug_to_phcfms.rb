class AddCachedSlugToPhcfms < ActiveRecord::Migration
  def self.up
    add_column :phcfms, :cached_slug, :string
    add_index :phcfms, :cached_slug, :unique => true
    add_column :news_events, :cached_slug, :string
    add_index :news_events, :cached_slug, :unique => true
    add_column :abouts, :cached_slug, :string
    add_index :abouts, :cached_slug, :unique => true
  end
  
  def self.down
    remove_column :phcfms, :cached_slug
    remove_column :news_events, :cached_slug
    remove_column :abouts, :cached_slug
  end
end
