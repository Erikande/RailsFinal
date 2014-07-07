class InsideController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  def home
  end
  
  def inside
  end 

  def new
  	@place = UserPlace.new
  end

  def create
	@place = UserPlace.new(place_params)
	@place.save
	if @place.save
		redirect_to inside_path
	else
		render 'new'
	end  
  end

  private

	def place_params
		params.require(:userplace).permit(:home_address, :work_address, :play_address)	
	end
    
end
