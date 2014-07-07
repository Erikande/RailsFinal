class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:inside, :inside_new]

  def home
  end
  
  def inside
  end 
    
end
