require 'spec_helper'

describe "/statics/pravno_obvestilo" do
  before(:each) do
    render 'statics/pravno_obvestilo'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/statics/pravno_obvestilo])
  end
end
