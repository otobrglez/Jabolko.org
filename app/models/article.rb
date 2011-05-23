# == Schema Information
#
# Table name: articles
#
#  id             :integer         not null, primary key
#  title          :string(255)
#  permalink      :string(255)
#  image          :string(255)
#  intro          :text
#  body           :text
#  published      :boolean
#  created_at     :datetime
#  updated_at     :datetime
#  comments_count :integer         default(0)
#  tinyurl        :string(255)
#  source_id      :integer
#

class Article < ActiveRecord::Base
  belongs_to :source
  has_and_belongs_to_many :writers
  has_and_belongs_to_many :categories
  has_many :taggings, :dependent => :destroy
  has_many :tags, :through => :taggings

  #attr_accessible :title, :permalink, :intro, :body, :writer_ids, :category_ids
  
  validates_presence_of :title, :permalink, :intro, :body, :category_ids
  validates_format_of :permalink, :with => /^[0-9a-z\-]+$/, :on => :create, :message => "can contain only a-z, 0-9 and -"
  
  attr_writer :tag_names
  attr_accessor :new_source_name, :new_source_url
  after_save :assign_tags
  before_save :create_new_source
  before_save :assure_permalinks_format
  
  named_scope :descending, :order => "created_at DESC"
  named_scope :ascending, :order => "created_at ASC"
  
  named_scope :sort_by_comments_count, :conditions => { :published => true }, :order => 'comments_count DESC'
  named_scope :published, :conditions => { :published => true }, :order => "created_at DESC"
  named_scope :limited, :limit => 20
  
  def tag_names
    @tag_names || tags.map(&:name).join(' ')
  end
  
  def self.page_pagination(page)
    with_permissions_to(:read).paginate :page => page, :order => 'published ASC, created_at DESC', :per_page => 5
  end
  
  def self.blog_pagination(page)
    paginate :page => page, :conditions => ["published = ?", true], :order => 'created_at DESC', :per_page => 5
  end
  
  def to_param
    "#{id}-#{permalink.to_permalink}"
  end
  
  def state
    "(neobjavljen)" unless published
  end
  
  def mainimage
    if image.blank?
      '/images/nomainimage.jpg'
    else
      image
    end
  end
  
  private
  
  def assign_tags
    if @tag_names
      self.tags = @tag_names.split(/\s+/).map do |name|
        Tag.find_or_create_by_name(name)
      end
    end
  end
  
  def create_new_source
    create_source(:name => new_source_name, :url => new_source_url) unless new_source_name.blank? && new_source_url.blank?
  end
  
  def assure_permalinks_format
    self.permalink.to_permalink
  end
  
end
