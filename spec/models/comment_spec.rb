# == Schema Information
#
# Table name: comments
#
#  id         :integer         not null, primary key
#  body       :text
#  name       :string(255)
#  email      :string(255)
#  article_id :integer
#  www        :string(255)
#  created_at :datetime
#  updated_at :datetime
#  author_ip  :string(255)
#

require File.dirname(__FILE__) + '/../spec_helper'

describe Comment do
  it "should be valid" do
    Comment.new.should be_valid
  end
end
