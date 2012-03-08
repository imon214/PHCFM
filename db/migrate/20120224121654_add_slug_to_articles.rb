class AddSlugToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :slug, :string
    add_index :articles, :slug, :unique => true
    add_column :comments, :slug, :string
    add_index :comments, [:commentable_id, :slug], :unique => true

  end
end
