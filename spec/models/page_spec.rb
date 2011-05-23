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

require File.dirname(__FILE__) + '/../spec_helper'

describe Page do
  it "should be valid" do
    Page.new.should be_valid
  end
end
