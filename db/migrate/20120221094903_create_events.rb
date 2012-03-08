class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :news_title
      t.string :link
      t.text :body
      t.datetime :date
      t.string :place
      t.string :author

      t.timestamps
    end
  end
  
   def self.down
     drop_table :events
   end  
end
