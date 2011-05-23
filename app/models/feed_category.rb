# == Schema Information
#
# Table name: feed_categories
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :string(255)
#  link        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  rss_home    :string(255)
#

class FeedCategory < ActiveRecord::Base
  has_many :feed_entries
  # attr_accessible :title, :description, :link
end
