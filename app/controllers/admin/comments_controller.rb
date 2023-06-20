class Admin::CommentsController < ApplicationController
  
  def destroy
    destroy_comment = Comment.find(params[:id])
    destroy_comment.delete
    flash[:notice] = 'コメントを削除しました。'
    redirect_to admin_users_path
  end

end
