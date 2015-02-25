class CommentsController < ApplicationController
  load_and_authorize_resource

  def create 
    @comment = Comment.new(comment_params) 
  
    if @comment.save 
      ;flash[:notice] = 'Comment was successfully created.' 
      redirect_to(@comment.topic) 
    else 
      ;flash[:alert] = @comment.errors.full_messages.to_sentence
      redirect_to(@comment.topic) 
    end 
  end 
  
  def destroy 
    @comment = Comment.find(params[:id]) 
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to @comment.topic, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end 


    def comment_params
      params.require(:comment).permit(:user_id, :topic_id, :body)
    end


end 



