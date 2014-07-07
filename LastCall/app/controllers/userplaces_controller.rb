class UserplacesController < ApplicationController
  def index
  end

  def new
  	@place = UserPlace.new
  end

  def create
	@place = UserPlace.new(place_params)
	@place.save
	if @place.save
		redirect_to root_path
	else
		render 'new'
	end  
  end

  private

	def place_params
		params.require(:userplace).permit(:home_address, :work_address, :play_address)	
	end
end