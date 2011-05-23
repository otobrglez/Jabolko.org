class CreateWriters < ActiveRecord::Migration
  def self.up
    create_table :writers do |t|
      t.string :firstname
      t.string :lastname
      t.text :about
      t.string :www
      t.string :twitter
      t.timestamps
    end
  end
  
  def self.down
    drop_table :writers
  end
end
