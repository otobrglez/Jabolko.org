# == Schema Information
#
# Table name: pages
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

class Page < ActiveRecord::Base
  attr_accessible :title, :body
end
