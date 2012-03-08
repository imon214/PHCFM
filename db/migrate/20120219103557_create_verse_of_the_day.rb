class CreateVerseOfTheDay < ActiveRecord::Migration
  def self.up
  create_table :verse_of_the_day do |t|
      t.string :verse
      t.text :body
      t.date :date
      t.string :author, :limit => 16, :default => 'admin'

      t.timestamps
    end
  end

  def self.down
    drop_table :verse_of_the_day
  end
end
