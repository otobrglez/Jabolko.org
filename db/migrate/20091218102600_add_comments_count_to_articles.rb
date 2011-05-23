class AddCommentsCountToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :comments_count, :integer, :default => 0
    
    Article.reset_column_information
    Article.all.each do |a|
      a.update_attributes(:comments_count => a.comments.length)
    end
  end

  def self.down
    remove_column :articles, :comments_count
  end
end
