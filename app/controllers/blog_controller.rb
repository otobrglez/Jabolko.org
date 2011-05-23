class BlogController < ApplicationController
  # before_filter :cache_to_infinity, :only => [:articles, :article, :tags, :tag, :writers, :writer, :search]
  before_filter :cache_60s, :only => [:article]
  
  def articles
    if params[:permalink]
      # za kategorije
      @category = Category.find_by_permalink(params[:permalink])
      @articles = @category.articles.blog_pagination(params[:page])
    else
      # za prvo stran in blog.rss
      respond_to  do |f|
        f.html do
          if request.request_uri == '/blog'
            redirect_to(root_path)
          end
          @articles = Article.blog_pagination(params[:page])
        end
        f.rss { @articles = Article.published.limited }
      end
    end
  end
  
  def article
    @article = Article.find(params[:id], :conditions => ["published = ?", true])
  end
  
  def tags
    @tags = Tag.all(:order => "name ASC")
  end

  def tag
    @tag = Tag.find_by_name(params[:name])
    raise ActiveRecord::RecordNotFound unless @tag
    if params[:order] == 'comments'
      @tag_articles = @tag.articles.sort_by_comments_count
    else
      @tag_articles = @tag.articles.published
    end
  end
  
  def writers
    if params[:order] == 'articles'
      @writers = Writer.all(:conditions => { :visible => true }).sort_by do |writer|
        writer.articles.count
      end
      @writers = @writers.reverse
    else
      @writers = Writer.all(:conditions => { :visible => true }, :order => 'firstname ASC')
    end
  end
  
  def writer
    # 
    @writer = Writer.find(params[:id])
    @writer_articles = @writer.articles.published
  end
  
  def search
    # code in view
  end

  private
  
  def cache_to_infinity
    response.headers['Cache-Control'] = 'public, max-age=3000000000000'
  end
  
  def cache_60s
    response.headers['Cache-Control'] = 'public, max-age=60'
  end

end