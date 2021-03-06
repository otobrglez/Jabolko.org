# == Schema Information
#
# Table name: writers
#
#  id         :integer         not null, primary key
#  firstname  :string(255)
#  lastname   :string(255)
#  about      :text
#  www        :string(255)
#  twitter    :string(255)
#  created_at :datetime
#  updated_at :datetime
#  sex        :string(255)
#  nickname   :string(255)
#  permalink  :string(255)
#  visible    :boolean         default(TRUE)
#  email      :string(255)
#  www_label  :string(255)
#  avatar     :string(255)
#  facebook   :string(255)
#

require File.dirname(__FILE__) + '/../spec_helper'

describe Writer do
  it "should be valid" do
    Writer.new.should be_valid
  end
end
