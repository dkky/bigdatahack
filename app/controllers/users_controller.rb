class UsersController < ApplicationController

	def show
    @user = User.find(params[:id])
    @histories = @user.histories
	end

end
