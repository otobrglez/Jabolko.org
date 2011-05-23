# == Schema Information
#
# Table name: feed_entries
#
#  id               :integer         not null, primary key
#  title            :string(255)
#  url              :string(255)
#  feed_category_id :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class FeedEntry < ActiveRecord::Base
  belongs_to :feed_category
    
  def self.update_from_feeds(feed_urls)
    FeedEntry.delete_all
    feeds = Feedzirra::Feed.fetch_and_parse(feed_urls)
    feeds.values.each do |feed|
      feed_category_id = case feed.feed_url
      when 'http://images.apple.com/main/rss/hotnews/hotnews.rss' then 1
      when 'http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/ws/RSS/topfreeapplications/limit=10/xml' then 2
      when 'http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/ws/RSS/toppaidapplications/limit=10/xml' then 3
      when 'http://images.apple.com/downloads/macosx/home/recent.rss' then 4
      when 'http://trailers.apple.com/trailers/home/rss/newtrailers.rss' then 5
      when 'http://images.apple.com/downloads/macosx/drivers/recent.rss' then 6
      end
      feed.entries.each do |entry|
        create!(
          :title => entry.title,
          :url => entry.url,
          :feed_category_id => feed_category_id
        )
      end
    end
  end
end
