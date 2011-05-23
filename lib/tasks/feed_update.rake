task :feed_update => :environment do
  puts "Updating feed at #{Time.now}"
  feed_urls = [
    "http://images.apple.com/main/rss/hotnews/hotnews.rss",
    "http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/ws/RSS/topfreeapplications/limit=10/xml",
    "http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/ws/RSS/toppaidapplications/limit=10/xml",
    "http://images.apple.com/downloads/macosx/home/recent.rss",
    "http://trailers.apple.com/trailers/home/rss/newtrailers.rss",
    "http://images.apple.com/downloads/macosx/drivers/recent.rss"
    ]
  FeedEntry.update_from_feeds(feed_urls)
  puts "done."
end