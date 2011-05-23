class Banner < ActiveRecord::Base
  validates_presence_of :url, :image
end
