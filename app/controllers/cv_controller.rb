class CvController < ApplicationController
  before_action :authenticate_user! 

  def upload_cv
       if user_signed_in?
        @user=current_user
        render :upload_cv
       end
  end
  def update
      if user_signed_in?
        @user=current_user
          if @user.update(params.require(:user).permit(:cv))
           redirect_to root_path, notice: "CV was successfully added." 
      else
        redirect_to root_path, error: "CV was not uploaded.Please try again!!"
        end
      end
  end
end