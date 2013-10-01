class SessionsController < ApplicationController
  def new
  end

  def create
  	
  	if user = login(params[:email], params[:password])
  		redirect_to root_url, :notice => "Logged in!"
  	else
  		flash.now.alert = "Email or password was Invalid"	
  	end
  end

  def destroy
  	logout
  	redirect_to root_url, :notice => "Bye"
  end
end
