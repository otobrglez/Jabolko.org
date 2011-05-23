require 'spec_helper'

describe BlogController do

  #Delete these examples and add some real ones
  it "should use BlogController" do
    controller.should be_an_instance_of(BlogController)
  end


  describe "GET 'all_articles'" do
    it "should be successful" do
      get 'all_articles'
      response.should be_success
    end
  end

  describe "GET 'category_articles'" do
    it "should be successful" do
      get 'category_articles'
      response.should be_success
    end
  end

  describe "GET 'tag_articles'" do
    it "should be successful" do
      get 'tag_articles'
      response.should be_success
    end
  end

  describe "GET 'single_article'" do
    it "should be successful" do
      get 'single_article'
      response.should be_success
    end
  end
end
