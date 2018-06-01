class CommentsController < ApplicationController
    def new
        @comment = Comment.new
    end

    def create
        
        @comment = Comment.new(comment_params)
        @comment.sender = current_user
        
        @comment.save
     
        redirect_to @comment.recipient
    end

    def show
        @comment = Comment.find(@comment.recipient)
    end
    private

    def comment_params
 
        params.require(:comment).permit(:cohort_id, :user_id, :sender_id, :recipient_id, :content) 
    end
end
