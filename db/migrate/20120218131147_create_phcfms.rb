class CreatePhcfms < ActiveRecord::Migration
  def self.up
    create_table :phcfms do |t|
      t.string :link
      t.string :title
      t.text :body
      t.datetime :date_published
      t.string :author, :limit => 16, :default => 'guest'

      t.timestamps
    end
  end
  
  def self.down
    drop_table :phcfms
  end
end
