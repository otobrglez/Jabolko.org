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

require File.dirname(__FILE__) + '/../spec_helper'

describe FeedCategory do
  it "should be valid" do
    FeedCategory.new.should be_valid
  end
end
