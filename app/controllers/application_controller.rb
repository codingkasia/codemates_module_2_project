class ApplicationController < ActionController::Base
     helper_method :current_user
     helper_method :update_roomate_status
    
    def current_user
        if @current_user
            @current_user
        else
            @current_user = User.find_by(id: session[:user_id])
        end
    end

    def update_roomate_status
        if @profile.roomate == true
            @user.roomate == true
        end
    end

   
end
