require 'spec_helper'

describe StaticsController do

  #Delete these examples and add some real ones
  it "should use StaticsController" do
    controller.should be_an_instance_of(StaticsController)
  end


  describe "GET 'o_nas'" do
    it "should be successful" do
      get 'o_nas'
      response.should be_success
    end
  end

  describe "GET 'sodeluj'" do
    it "should be successful" do
      get 'sodeluj'
      response.should be_success
    end
  end

  describe "GET 'pravno_obvestilo'" do
    it "should be successful" do
      get 'pravno_obvestilo'
      response.should be_success
    end
  end
end
