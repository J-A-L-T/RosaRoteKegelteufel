class CommentsController < ApplicationController 
  def create 
    @comment = Comment.new(comment_params) 
  
    if @comment.save 
      ;flash[:notice] = 'Comment was successfully created.' 
      redirect_to(@comment.topic) 
    else 
      flash[:notice] = "Error creating comment: #{@comment.errors}" 
      redirect_to(@comment.topic) 
    end 
  end 
  
  def destroy 
    @comment = Comment.find(params[:id]) 
    @comment.destroy 
  
    redirect_to(@comment.topic) 
  end 


    def comment_params
      params.require(:comment).permit(:user_id, :topic_id, :body)
    end


end 



