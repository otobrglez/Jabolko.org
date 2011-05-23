require 'spec_helper'

describe "/user_session/create" do
  before(:each) do
    render 'user_session/create'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/user_session/create])
  end
end
