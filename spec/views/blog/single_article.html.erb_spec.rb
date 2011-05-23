require 'spec_helper'

describe "/blog/single_article" do
  before(:each) do
    render 'blog/single_article'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/blog/single_article])
  end
end
