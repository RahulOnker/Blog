class CommentsController < ApplicationController
    def create
        
        @chat = Chat.find(params[:chat_id])
        @comments = @chat.comments.create(comment_params)
        redirect_to @chat
    end

    def destroy
        @chat = Chat.find(params[:chat_id])
        @comment = Comment.find(params[:id])

        @comment.destroy

        redirect_to @chat
    end

    private

    def comment_params
        params.require(:comment).permit(:comment, :user_id)
    end
end
