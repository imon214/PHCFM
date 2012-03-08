class AddCachedSlugToComments < ActiveRecord::Migration
  def change
    add_column :comments, :cached_slug, :string

  end
end
