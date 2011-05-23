module ApplicationHelper
  
  #writers links helper
  def writer_links_display(writer)
    writer_links_collection(writer).join('<div id="writer_links_seperator"></div>')
  end
  
  def writer_links_collection(writer)
    writer_links = []
    if writer.www.present? and writer.www_label.present?
  		website_link = link_to(writer.www_label, writer.www, :target => '_blank')
      writer_links << "<div id='writer_website_icon'>#{website_link}</div>"
    end
    if writer.twitter.present?
      twitter_url = "http://twitter.com/#{writer.twitter}"
  		twitter_link = link_to(writer.twitter, twitter_url, :target => '_blank')
      writer_links << "<div id='writer_twitter_icon'>#{twitter_link}</div>"
    end
    if writer.facebook.present?
  		facebook_link = link_to(writer.fullname, writer.facebook, :target => '_blank')
      writer_links << "<div id='writer_facebook_icon'>#{facebook_link}</div>"
    end
    writer_links
  end
  
  #nickname formatting
  def writer_nickname
    " (#{@writer.nickname})" unless @writer.nickname.blank?
  end
  
  #blogofy
  def blogofy(text)
    text.gsub!('code: shell', '<script type="syntaxhighlighter" class="brush: shell"><![CDATA[')
    text.gsub!('code: plain', '<script type="syntaxhighlighter" class="brush: plain"><![CDATA[')
    text.gsub!('code: end', ']]></script>')
    textilized = textilize(text)
    textilized.gsub!('<ins>', '+')
    textilized.gsub!('</ins>', '+')
    textilized
  end
  
  #decapitalize
  def decapitalize(string)
    (string.slice(0) || string.chars('')).downcase + (string.slice(1..-1) || string.chars(''))
  end
  
  #head title
  def page_head_title(head_title)
    if head_title
		  "#{head_title} - Jabolko.org"
		else
		  "Jabolko.org"
		end  
  end
  
  #li helper
  def li_link_to(title, link, target = '_blank')
    "<li>#{link_to(title, link, :target => target)}</li>"
  end
  
  #articles_pagination
  def articles_pagination(articles)
    pagination = will_paginate(articles, :previous_label => 'Nazaj', 
                                         :next_label => 'Naprej', 
                                         :inner_window => 2, 
                                         :outer_window => 2,
                                         :renderer => 'PaginationWithSpanLinkRenderer')
    "<div class='pagination_wrap'>#{pagination}<div class='clr'></div></div>"
  end
  
  #topmenu
  def topmenu_link_to(title, path)
    classname = 'selected' if blog_area?(path)
    title = "<span>#{title}</span>"
    link = link_to(title, blog_category_path(path))
    "<li class='#{classname}'>#{link}</li>"
  end
  
  def blog_area?(path)
    if controller_is('blog')
      if permalink_is(path)
        true
      elsif action_is('article')
        id = params[:id].split('-').first
        path == Article.find(id).categories.first.permalink
      end
    end
  end
  
  def controller_is(controller)
    params[:controller] == controller
  end
  
  def id_is(id)
    params[:id] == id
  end
  
  def permalink_is(permalink)
    params[:permalink] == permalink
  end
  
  def action_is(action)
    params[:action] == action
  end
  
  def is_root?
		params[:controller] == 'blog' && params[:action] == 'articles' && params[:permalink].blank?
	end
	
	#link to article category
	def link_to_article_category(article)
	 link_to article.categories.first.title.downcase, blog_category_path(article.categories.first.permalink)
	end
  
  #correct months -> old
  def corrected_created_at(article)
    corrected_months = [
      'januarja',
      'februarja',
      'marca',
      'aprila',
      'maja',
      'junija',
      'julija',
      'avgusta',
      'septembra',
      'oktobra',
      'novembra',
      'decembra'
    ]
    
    "#{article.created_at.day}. #{corrected_months[article.created_at.month-1]} #{article.created_at.year}"
  end
  
  #list_writers
  def list_writers(writers)
    list_writer(writers).join(', ')
  end
  
  def list_writer(writers)
    writers.collect do |writer|
      nickname = " (#{writer.nickname})" unless writer.nickname.blank?
      if writer.visible == true
        link_to("#{writer.fullname}#{nickname}", blog_writer_path(writer))
      else
        "#{writer.fullname}#{nickname}"
      end
    end
  end
  
  #list tags
  def list_tags(tags)
    tag_links(tags).join(', ')
  end
  
  def tag_links(tags)
    tags.collect do |tag|
      tag_link(tag)
    end
  end
  
  def tag_link(tag)
    link_to tag.name, blog_tag_path(tag)
  end
  
  #list categories
  def list_categories(categories)
    category_links(categories).join(', ')
  end
  
  def category_links(categories)
    categories.collect do |category|
      category_link(category)
    end
  end
  
  def category_link(category)
    link_to decapitalize(category.title.mb_chars), path(category.id)
  end
  
  def path(category)
    path = case category
      when 1 then novice_path
      when 2 then mac_path
      when 3 then ipod_iphone_path
      when 4 then snelkurs_path
    end
    path
  end
end
