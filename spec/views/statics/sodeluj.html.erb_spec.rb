require 'spec_helper'

describe "/statics/sodeluj" do
  before(:each) do
    render 'statics/sodeluj'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/statics/sodeluj])
  end
end
