class UsersController < ApplicationController
  # GET /users/new
  def new
    @user = User.new
    render :partial => 'new'
  end

  # POST /users
  def create

    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
	flash[:notice] = "User was successfully created."       
      end
      format.html { redirect_to :back}
    end
  end

end
