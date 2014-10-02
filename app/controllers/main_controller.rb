class MainController < ApplicationController
  before_action :authenticate_user!, only: %[home]
  
  def index
    @lawyers = User.where(level: "Lawyer")
    if current_user
      redirect_to home_path
    end 
  end
  
  def home
    @user = current_user
  end
  
 
   
end
