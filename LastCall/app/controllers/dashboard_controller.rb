class DashboardController < ApplicationController
  def index
  end

	def show
		@place = UserPlace.find(params[:id])
	end

end
