require 'spec_helper'

describe "/blog/category_articles" do
  before(:each) do
    render 'blog/category_articles'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/blog/category_articles])
  end
end
