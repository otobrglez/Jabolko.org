class AddRssHomeToFeedCategories < ActiveRecord::Migration
  def self.up
    add_column :feed_categories, :rss_home, :string
  end

  def self.down
    remove_column :feed_categories, :rss_home
  end
end
