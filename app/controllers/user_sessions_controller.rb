class UserSessionsController < ApplicationController
  filter_resource_access
  
  def new
    if UserSession.find
      flash[:notice] = "Si ze prijavljen."
      redirect_to articles_path
    else
      @user_session = UserSession.new
    end
  end

  def create
    if UserSession.find
      flash[:notice] = "Si ze prijavljen."
      redirect_to articles_path
    else
      @user_session = UserSession.new(params[:user_session])
      if @user_session.save
        redirect_to(articles_path)
        flash[:notice] = "Prijava uspela."
      else
        render :action => "new"
      end
    end
  end

  def destroy
    if UserSession.find
      @user_session = UserSession.find
      @user_session.destroy
      flash[:notice] = "Odjava uspela."
      redirect_to root_path
    else
      redirect_to prijava_path
    end
  end

end