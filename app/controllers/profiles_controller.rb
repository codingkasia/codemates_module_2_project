class ProfilesController < ApplicationController
    def new
        @profile = Profile.new 
    end
    
    def create
        @profile = Profile.new(profile_params)

        @profile.user = current_user
        

        
        @profile.save 
        #update_roomate_status
    

        redirect_to profile_path(@profile)
    end

    def show
        @profile = Profile.find(params[:id])
        @message = Message.new

    end

    def edit
       @profile = Profile.find(params[:id])
    end

    def update
        @profile = Profile.find(params[:id])
        @profile.update(profile_params)
        redirect_to @profile

    end


    private 

    def profile_params
        params.require(:profile).permit(:user_id, :gender, :share_room, :price, :walking_distance, :roomate)
    end
 
end
