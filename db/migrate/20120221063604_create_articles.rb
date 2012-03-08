class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :article_title
      t.string :link
      t.text :body
      t.datetime :date_published
      t.string :author, :limit => 16, :default => 'admin'

      t.timestamps
    end
  end
  
  def self.down
     drop_table :articles
  end
end
