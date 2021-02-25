class CommentsController<ActionController::Base
  def new
    redirect_to "/"
  end

  def create
    @user = User.find(params[:comment][:user_id])
    @comment = Comment.create({user_id: params[:comment][:user_id], photo_id: params[:comment][:photo_id],comment: params[:comment][:comment]})
    redirect_to user_path(session[:user_id])
  end

end