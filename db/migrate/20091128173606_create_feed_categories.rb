class CreateFeedCategories < ActiveRecord::Migration
  def self.up
    create_table :feed_categories do |t|
      t.string :title
      t.string :description
      t.string :link
      t.timestamps
    end
  end
  
  def self.down
    drop_table :feed_categories
  end
end
