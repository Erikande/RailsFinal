class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:inside, :inside_new]
  # require 'dish'
  require 'json'
  require 'rest_client'
  require "uri"

  def home
  end
  
  def inside
  	@places = current_user.user_places

  	# UserPlace.find(:all, :conditions => 'id > 0')
  end 

  def show
   	@place = UserPlace.find(params[:id])
    @lat = @place.latitude
    @lng = @place.longitude
    @uri = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{@lat},#{@lng}&radius=500&types=train_station&key=AIzaSyApJV1Xj5hGnm9DMxIE-N-UfEioqeT_RRc"
    @response = JSON.parse(RestClient.get @uri)
    @areas = @response['results']


  end


  def destroy
  	@place = UserPlace.find(params[:id])
  	@place.destroy

  	redirect_to inside_path
  end
    
end
