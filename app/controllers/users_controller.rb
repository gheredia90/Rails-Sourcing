class UsersController < ApplicationController

	def index
		@users = User.all
	end	

	def show
		@user = User.find(params[:id])
    	rescue ActiveRecord::RecordNotFound
      		render "no_projects_found"
	end	

	def new
		@user = User.new		
	end  

	def create
		@user = User.new user_params		

		if @user.save
			flash[:notice] = "User successfully created"
			redirect_to action: 'index', controller: 'users'			
		else
			render 'new'
		end		
	end

	private
	def user_params
		params.require(:user).permit(:name, :email)
	end


end
