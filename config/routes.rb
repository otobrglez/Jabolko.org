ActionController::Routing::Routes.draw do |map|
  
  #admin
  map.admin 'admin', :controller => :admin, :action => :index
  
  map.tag 'admin/tags/:name', :controller => "tags", :action => "show"
  
  map.connect 'admin/stran/:page', :controller => :articles
  
  map.prijava 'admin/prijava', :controller => 'user_sessions', :action => 'new'
  map.odjava 'admin/odjava', :controller => 'user_sessions', :action => 'destroy'

  map.with_options :controller => 'categories', :action => 'show' do |cat|
    cat.novice 'admin/novice', :id => 1, :page => 1
    cat.connect 'admin/novice/stran/:page', :id => 1
    cat.mac 'admin/mac', :id => 2, :page => 1
    cat.connect 'admin/mac/stran/:page', :id => 2
    cat.ipod_iphone 'admin/iphone-ipod', :id => 3, :page => 1
    cat.connect 'admin/iphone-ipod/stran/:page', :id => 3
    cat.snelkurs 'admin/snelkurs', :id => 4, :page => 1
    cat.connect 'admin/snelkurs/stran/:page', :id => 4
  end

  map.resource :user_session, :path_prefix => "admin"
  
  map.resources :sources, :path_prefix => "admin"
  map.resources :users, :path_prefix => "admin"
  map.resources :pages, :path_prefix => "admin"
  map.resources :feed_categories, :path_prefix => "admin"
  map.resources :feed_entries, :path_prefix => "admin"
  map.resources :categories, :path_prefix => "admin"
  map.resources :writers, :path_prefix => "admin"
  map.resources :articles, :path_prefix => "admin"
  map.resources :banners, :path_prefix => "admin"

  #blog
  map.with_options :controller => 'statics' do |page|
    page.o_nas 'o-nas', :action => 'o_nas'
    page.sodeluj 'sodeluj', :action => 'sodeluj'
    page.pravno_obvestilo 'pravno-obvestilo', :action => 'pravno_obvestilo'
  end
  
  map.with_options :controller => :blog do |blog|
    blog.blog_search 'iskanje', :action => :search
    
    blog.blog_writer_order 'avtorji/razvrsti/poobjavah', :action => :writers, :order => 'articles'
    blog.blog_writers 'avtorji', :action => :writers
    blog.blog_writer 'avtorji/:id', :action => :writer
    
    blog.blog_tags 'znacke', :action => :tags
    blog.blog_tag_order 'znacke/:name/razvrsti/pokomentarjih', :action => :tag, :order => 'comments'
    blog.blog_tag 'znacke/:name', :action => :tag
    
    blog.blog_category ':permalink', :action => :articles, :page => 1, :requirements => { :permalink => /novice|mac|ipad|iphone-ipod|snelkurs/ }
    blog.connect ':permalink/stran/:page', :action => :articles, :requirements => { :permalink => /novice|mac|ipad|iphone-ipod|snelkurs/ }
    blog.connect '/', :action => :articles, :page => 1
    blog.connect '/stran/:page', :action => :articles
    blog.root :action => :articles

    blog.blog 'blog.:format', :action => :articles
    blog.blog_article 'blog/:id', :action => :article
  end

end