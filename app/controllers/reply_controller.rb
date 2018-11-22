class ReplyController < ApplicationController
  def create
    
    create_reply = Reply.new(lecture_id: params[:l_id], content: params[:content])
    create_reply.save
    
    # redirect_to "/home/show/#{params[:l_id]}"
  end

  def destroy
    
    d_reply = Reply.find(params[:reply_id])
    d_reply.destroy
    
    redirect_to :back
  end
end
