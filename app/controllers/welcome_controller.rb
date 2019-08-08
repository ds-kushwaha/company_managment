class WelcomeController < ApplicationController
	

  def index

  end

  def user_profile
  @user = current_user
  end
end

