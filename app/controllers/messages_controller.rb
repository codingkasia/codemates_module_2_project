class MessagesController < ApplicationController
    def new
        @message = Message.new
    end

    def create
        @message = Message.new(message_params)
        @message.user_id = current_user
    
        @message.save
        redirect_to @message
    end

    def show
        @message = Message.find(params[:id])
    end
    private

    def message_params
        params.require(:message).permit(:user_id, :content) 
    end
end
