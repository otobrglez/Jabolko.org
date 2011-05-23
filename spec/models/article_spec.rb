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

require File.dirname(__FILE__) + '/../spec_helper'

describe Article do
  it "should be valid" do
    Article.new.should be_valid
  end
end
