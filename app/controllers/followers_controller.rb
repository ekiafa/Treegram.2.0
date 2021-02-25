class FollowersController<ActionController::Base

  def create
    @user = User.find(params[:user_id])
    @follower = Follower.create({user_id: params[:user_id],follower_id:params[:follower][:follower_id]})
    flash[:notice] = "Done!"
    redirect_to user_path(session[:user_id])

  end

  def new
    @user = User.find(params[:user_id])
    @users = User.all
    @follower = Follower.new()
  end

end




