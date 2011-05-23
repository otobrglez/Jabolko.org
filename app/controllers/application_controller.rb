class ApplicationController < ActionController::Base
  helper :all
  
  protect_from_forgery
  
  filter_parameter_logging :password
  
  #before_filter :authorization
  
  before_filter :redirect_to_www
  
  before_filter { |c| Authorization.current_user = c.current_user }
  
  helper_method :current_user
  
  def current_user_session
    @current_user_session ||= UserSession.find
  end

  def current_user
    @current_user ||= current_user_session && current_user_session.record
  end
  
  protected
  
  def permission_denied
    redirect_to '/404.html'
  end
  
  private
  
  def authorization
    authenticate_or_request_with_http_basic do |username, password|
      username = "jabucek" && password = "jedober!"
    end
  end
  
  def redirect_to_www
    unless ['jabolko-blog.dev', 'www.jabolko.org'].include?(request.host)
      redirect_to "http://www.jabolko.org#{request.request_uri}"
    end
  end
  
end
