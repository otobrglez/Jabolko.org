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

require 'spec_helper'

describe Tagging do
  before(:each) do
    @valid_attributes = {
      :article_id => ,
      :tag_id => 
    }
  end

  it "should create a new instance given valid attributes" do
    Tagging.create!(@valid_attributes)
  end
end
