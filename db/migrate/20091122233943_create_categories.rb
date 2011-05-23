class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :title
      t.string :permalink
      t.string :description
      t.integer :parent_id, :lft, :rgt
      t.timestamps
    end
  end
  
  def self.down
    drop_table :categories
  end
end
