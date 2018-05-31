class ProfilesController < ApplicationController
    def new
        @profile = Profile.new 
    end
    
    def create
        @profile = Profile.new(profile_params)
        @profile.user = current_user
        @profile.save 

        redirect_to profile_path(@profile)
    end

    def show
        @profile = Profile.find(params[:id])
    end

    private 

    def profile_params
        params.require(:profile).permit(:user_id, :gender, :share_room, :price, :walking_distance)
    end
 
end
