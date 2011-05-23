require 'spec_helper'

describe "/statics/o_nas" do
  before(:each) do
    render 'statics/o_nas'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/statics/o_nas])
  end
end
