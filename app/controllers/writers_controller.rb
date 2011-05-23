class WritersController < ApplicationController
  layout 'admin'
  filter_resource_access
  
  def index
    @writers = Writer.all
  end
  
  def show
    @writer = Writer.find(params[:id])
  end
  
  def new
    @writer = Writer.new
  end
  
  def create
    @writer = Writer.new(params[:writer])
    if @writer.save
      flash[:notice] = "Successfully created writer."
      redirect_to writers_path
    else
      render :action => 'new'
    end
  end
  
  def edit
    @writer = Writer.find(params[:id])
  end
  
  def update
    @writer = Writer.find(params[:id])
    if @writer.update_attributes(params[:writer])
      flash[:notice] = "Successfully updated writer."
      redirect_to writers_path
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @writer = Writer.find(params[:id])
    @writer.destroy
    flash[:notice] = "Successfully destroyed writer."
    redirect_to writers_path
  end
end
