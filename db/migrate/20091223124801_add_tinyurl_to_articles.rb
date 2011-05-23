class AddTinyurlToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :tinyurl, :string
  end

  def self.down
    remove_column :articles, :tinyurl
  end
end
