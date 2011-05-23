# == Schema Information
#
# Table name: users
#
#  id                  :integer         not null, primary key
#  firstname           :string(255)     not null
#  lastname            :string(255)     not null
#  email               :string(255)     not null
#  role                :string(255)     default("admin")
#  crypted_password    :string(255)     not null
#  password_salt       :string(255)     not null
#  persistence_token   :string(255)     not null
#  single_access_token :string(255)     not null
#  perishable_token    :string(255)     not null
#  login_count         :integer         default(0), not null
#  failed_login_count  :integer         default(0), not null
#  last_request_at     :datetime
#  current_login_at    :datetime
#  last_login_at       :datetime
#  current_login_ip    :string(255)
#  last_login_ip       :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#

require File.dirname(__FILE__) + '/../spec_helper'

describe User do
  it "should be valid" do
    User.new.should be_valid
  end
end
