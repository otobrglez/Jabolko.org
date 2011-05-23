class ArticlesController < ApplicationController
  layout 'admin'
  filter_resource_access
  
  def index
    @articles = Article.all(:order => "created_at DESC")
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(params[:article])
    if params[:article_preview] || !@article.save
      @article.created_at = Time.now
      render :action => 'new'
    else
      if @article.published
        flash[:notice] = "Članek je shranjen in viden javnosti."
      else
        flash[:notice] = "Članek je shranjen, a ni viden javnosti."
      end
      redirect_to articles_path
    end
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    params[:article][:writer_ids] ||= []
    params[:article][:category_ids] ||= []
    @article = Article.find(params[:id])
    if params[:article_preview] || !@article.update_attributes(params[:article])
      @article.title = params[:article][:title]
      @article.permalink = params[:article][:permalink]
      @article.image = params[:article][:image]
      @article.intro = params[:article][:intro]
      @article.body = params[:article][:body]
      @article.published = params[:article][:published]
      @article.category_ids = params[:article][:category_ids]
      @article.writer_ids = params[:article][:writer_ids]
      
      render :edit
    else
      if @article.published
        flash[:notice] = "Spremembe so shranjene. Članek je viden javnosti."
      else
        flash[:notice] = "Spremembe so shranjene. Članek ni viden javnosti."
      end
      redirect_to articles_path
    end
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:notice] = "Članek je izbrisan."
    redirect_to articles_url
  end
end
