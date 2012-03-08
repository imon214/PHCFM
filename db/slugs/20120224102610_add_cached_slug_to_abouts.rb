class AddCachedSlugToAbouts < ActiveRecord::Migration
  def change
    add_column :abouts, :cached_slug, :string

  end
end
