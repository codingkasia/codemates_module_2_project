class MessagesController < ApplicationController
    def new
        @message = Message.new
    end

    def create
        @message = Message.new(message_params)
        @message.sender = current_user
        
    
        @message.save
        
        redirect_to @message.receiver
    end

    def show
        @message = Message.find(@message.receiver)
    end
    private

    def message_params
        params.require(:message).permit(:sender_id, :receiver_id, :content) 
    end
end
