task :cron => :environment do
    puts "Updating feeds at #{Time.now}..."
    feed_urls = [
      "http://images.apple.com/main/rss/hotnews/hotnews.rss",
      "http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/ws/RSS/topfreeapplications/limit=10/xml",
      "http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/ws/RSS/toppaidapplications/limit=10/xml",
      "http://images.apple.com/downloads/macosx/home/recent.rss",
      "http://trailers.apple.com/trailers/home/rss/newtrailers.rss",
      "http://images.apple.com/downloads/macosx/drivers/recent.rss"
      ]
    FeedEntry.update_from_feeds(feed_urls)
    puts "Feeds updated."
    
    puts "Deleting all useless tags..."
    Tag.all.each do |tag|
      tag.destroy if tag.articles.empty?
    end
    puts "All tags with no articles deleted."
end