xml.instruct! :xml, :version => '1.0'
xml.rss :version => '2.0' do
  xml.channel do
    xml.title "Jabolko.org Sok - Apple uporabniki Slovenije"
    xml.link root_url
    xml.description "Zadnji članki in novice iz Jabolko.org."
    xml.language "SL"
    
    for article in @articles
      xml.item do
        xml.title article.title
        xml.description textilize(article.intro)
        xml.description "#{image_tag(article.image)}<br />" + textilize(article.intro)
        xml.pubDate article.created_at.to_s(:rfc822)
        xml.link blog_article_url(article)
        xml.guid blog_article_url(article)
      end
    end
  end
end