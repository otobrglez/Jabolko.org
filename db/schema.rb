# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110510205038) do

  create_table "admins", :force => true do |t|
    t.string    "email",                             :default => "", :null => false
    t.string    "encrypted_password", :limit => 128, :default => "", :null => false
    t.string    "password_salt",                     :default => "", :null => false
    t.integer   "sign_in_count",                     :default => 0
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "app_comments", :force => true do |t|
    t.string    "author"
    t.string    "author_url"
    t.string    "author_email"
    t.text      "content"
    t.string    "user_ip"
    t.string    "user_agent"
    t.string    "referrer"
    t.string    "spam",         :default => "f"
    t.integer   "app_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "apps", :force => true do |t|
    t.string    "itunes_id"
    t.string    "name"
    t.text      "desc"
    t.decimal   "price",              :default => 0.0
    t.integer   "developer_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "icon_file_name"
    t.string    "icon_content_type"
    t.integer   "icon_file_size"
    t.timestamp "icon_updated_at"
    t.integer   "app_comments_count", :default => 0
  end

  create_table "articles", :force => true do |t|
    t.string    "title"
    t.string    "permalink"
    t.string    "image"
    t.text      "intro"
    t.text      "body"
    t.boolean   "published",      :default => false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "comments_count", :default => 0
    t.string    "tinyurl"
    t.integer   "source_id"
  end

  create_table "articles_categories", :id => false, :force => true do |t|
    t.integer "article_id"
    t.integer "category_id"
  end

  create_table "articles_writers", :id => false, :force => true do |t|
    t.integer "article_id"
    t.integer "writer_id"
  end

  create_table "banners", :force => true do |t|
    t.string   "url"
    t.string   "image"
    t.boolean  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string    "title"
    t.string    "permalink"
    t.string    "description"
    t.integer   "parent_id"
    t.integer   "lft"
    t.integer   "rgt"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.text      "body"
    t.string    "name"
    t.string    "email"
    t.integer   "article_id"
    t.string    "www"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "author_ip"
    t.string    "referer"
    t.string    "user_agent"
    t.boolean   "spam",       :default => false
  end

  create_table "developers", :force => true do |t|
    t.string    "firstname"
    t.string    "lastname"
    t.string    "permalink"
    t.string    "email"
    t.text      "bio"
    t.string    "website_title"
    t.string    "website_url"
    t.string    "facebook_url"
    t.string    "linkedin_url"
    t.string    "twitter_username"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "apps_count",       :default => 0
    t.integer   "user_id"
    t.string    "status"
    t.string    "company_title"
  end

  create_table "feed_categories", :force => true do |t|
    t.string    "title"
    t.string    "description"
    t.string    "link"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "rss_home"
  end

  create_table "feed_entries", :force => true do |t|
    t.string    "title"
    t.string    "url"
    t.integer   "feed_category_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string    "title"
    t.text      "body"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "soons", :force => true do |t|
    t.string    "firstname"
    t.string    "lastname"
    t.string    "email"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "sources", :force => true do |t|
    t.string    "name"
    t.string    "url"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "taggings", :force => true do |t|
    t.integer   "article_id"
    t.integer   "tag_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string    "firstname",                                :null => false
    t.string    "lastname",                                 :null => false
    t.string    "email",                                    :null => false
    t.string    "role",                :default => "admin"
    t.string    "crypted_password",                         :null => false
    t.string    "password_salt",                            :null => false
    t.string    "persistence_token",                        :null => false
    t.string    "single_access_token",                      :null => false
    t.string    "perishable_token",                         :null => false
    t.integer   "login_count",         :default => 0,       :null => false
    t.integer   "failed_login_count",  :default => 0,       :null => false
    t.timestamp "last_request_at"
    t.timestamp "current_login_at"
    t.timestamp "last_login_at"
    t.string    "current_login_ip"
    t.string    "last_login_ip"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "writers", :force => true do |t|
    t.string    "firstname"
    t.string    "lastname"
    t.text      "about"
    t.string    "www"
    t.string    "twitter"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "sex"
    t.string    "nickname"
    t.string    "permalink"
    t.boolean   "visible",    :default => true
    t.string    "email"
    t.string    "www_label"
    t.string    "avatar"
    t.string    "facebook"
    t.string    "fullname"
  end

end
