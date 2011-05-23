authorization do
  role :admin do
    has_permission_on :banners, :to => :all
    has_permission_on :articles, :to => :all
    has_permission_on :users, :to => :all
    has_permission_on :writers, :to => :all
    has_permission_on :categories, :to => :all
    has_permission_on :feed_categories, :to => :all
    has_permission_on :feed_entries, :to => :all
    has_permission_on :user_sessions, :to => :all
    has_permission_on :pages, :to => :all
    has_permission_on :sources, :to => :all
    has_permission_on :admin, :to => :all
  end
  
  role :guest do
    # has_permission_on :articles, :to => :all
    # has_permission_on :users, :to => :all
    # has_permission_on :writers, :to => :all
    # has_permission_on :comments, :to => :all
    # has_permission_on :categories, :to => :all
    # has_permission_on :feed_categories, :to => :all
    # has_permission_on :feed_entries, :to => :all
    # has_permission_on :user_sessions, :to => :all
    # has_permission_on :pages, :to => :all
    has_permission_on :user_sessions, :to => :create
  end
end

privileges do
  privilege :create, :includes => [:new, :create]
  privilege :update, :includes => [:update, :edit]
  privilege :read, :includes => [:show, :index]
  privilege :all, :includes => [:read, :create, :update, :destroy, :delete]
end