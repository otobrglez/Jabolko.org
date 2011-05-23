require 'spec_helper'

describe "/blog/all_articles" do
  before(:each) do
    render 'blog/all_articles'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/blog/all_articles])
  end
end
