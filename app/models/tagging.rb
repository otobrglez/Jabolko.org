# == Schema Information
#
# Table name: taggings
#
#  id         :integer         not null, primary key
#  article_id :integer
#  tag_id     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Tagging < ActiveRecord::Base
  belongs_to :article
  belongs_to :tag
end
