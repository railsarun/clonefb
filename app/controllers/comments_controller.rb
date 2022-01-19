class CommentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @comment= Comment.new(comment_params.merge(user_id:current_user.id))

    @comment= current_user.comments.new(comment_params)
   
      #create a new comment for current user
      if !@comment.save
        flash[:notice] =@comment.errors.full_messages.to_sentence
        return
      end
      #   redirect_to post_path(params[:post_id])
     redirect_to post_path(params[:post_id])
  end




  private
   def comment_params
    params.require(:comment).permit(:content)
    .merge(post_id: params[:post_id])
   end
end
