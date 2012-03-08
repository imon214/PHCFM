class AddCachedSlugToNewsEvents < ActiveRecord::Migration
  def change
    add_column :news_events, :cached_slug, :string

  end
end
