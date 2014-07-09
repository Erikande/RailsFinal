class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:inside, :inside_new]

  def home
  end
  
  def inside
  	@places = current_user.user_places

  	# UserPlace.find(:all, :conditions => 'id > 0')
  end 

  def show
 
  end
    
end
