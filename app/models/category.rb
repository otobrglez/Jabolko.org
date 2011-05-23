# == Schema Information
#
# Table name: categories
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  permalink   :string(255)
#  description :string(255)
#  parent_id   :integer
#  lft         :integer
#  rgt         :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Category < ActiveRecord::Base
  has_and_belongs_to_many :articles
  # attr_accessible :title, :permalink, :description
  
  validates_presence_of :title, :permalink
end
