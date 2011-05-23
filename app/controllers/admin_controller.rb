class AdminController < ApplicationController
  layout 'admin'
  filter_access_to :all
  
  def index
  end

end
