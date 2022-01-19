class LikesController < ApplicationController
  def index
    @like=current_user.likes.new(like_params)
    if !@like.save
      flash[:notice] = @like.errors.full_messages.to_sentence
    end
     redirect_to posts_path
 end


 def destroy
  @like =current_user.likes.find(params[:id])
  post =@like.post
@post.destroy
redirect_to post_path
end

private

def like_params
  params.permit(:post_id)
end
end
