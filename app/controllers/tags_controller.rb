class TagsController < ApplicationController
  layout 'admin'
  
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find_by_name(params[:name], :order => "created_at DESC")
    @tag_articles = @tag.articles.find(:all, :order => "created_at DESC")
  end
end
