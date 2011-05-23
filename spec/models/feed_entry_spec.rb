# == Schema Information
#
# Table name: feed_entries
#
#  id               :integer         not null, primary key
#  title            :string(255)
#  url              :string(255)
#  feed_category_id :integer
#  created_at       :datetime
#  updated_at       :datetime
#

require 'spec_helper'

describe FeedEntry do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :link => "value for link",
      :feed_category_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    FeedEntry.create!(@valid_attributes)
  end
end
