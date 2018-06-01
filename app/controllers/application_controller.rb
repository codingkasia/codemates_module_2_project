class ApplicationController < ActionController::Base
     helper_method :current_user
     helper_method :update_roomate_status
     helper_method :find_match
    
    def current_user
        if @current_user
            @current_user
        else
            @current_user = User.find_by(id: session[:user_id])
        end
    end

    def update_roomate_status
       @idx = @profile.user_id
       @user = User.find(@idx)
       @user.roomate = true
    end

    def find_match 
        
        # profiles = 
        Profile.all.map do |profile|
         byebug
            if  (current_user.profile.gender_preferences == profile.gender_preferences) && (current_user.profile.gender_preferences == profile.gender_preferences)
               profile.user
            end
        end
        # return profiles
    end

end
