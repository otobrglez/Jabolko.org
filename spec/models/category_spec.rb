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

require File.dirname(__FILE__) + '/../spec_helper'

describe Category do
  it "should be valid" do
    Category.new.should be_valid
  end
end
