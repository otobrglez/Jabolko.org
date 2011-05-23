class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text :body
      t.string :name
      t.string :email
      t.integer :article_id
      t.string :www
      t.timestamps
    end
  end
  
  def self.down
    drop_table :comments
  end
end
