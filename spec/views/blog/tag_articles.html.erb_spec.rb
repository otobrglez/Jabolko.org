require 'spec_helper'

describe "/blog/tag_articles" do
  before(:each) do
    render 'blog/tag_articles'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/blog/tag_articles])
  end
end
