class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :name, :default => 'guest'
      t.string :email
      t.text :body
      #t.integer :phcfm_id
      t.integer :commentable_id
      t.string :commentable_type
      t.string :commentator_ip

      t.timestamps
    end
    
    add_index :comments, [:commentable_id, :commentable_type]
  end
    
    def self.down
       drop_table :comments
    end
end
