class CreateArticlesWriters < ActiveRecord::Migration
  def self.up
    create_table :articles_writers, :id => false do |t|
      t.integer :article_id
      t.integer :writer_id
    end
  end

  def self.down
    drop_table :articles_writers
  end
end
