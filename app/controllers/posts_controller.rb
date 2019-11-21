class PostsController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = current_user.posts.create(post_params)

    redirect_to root_path, notice: 'Post Created!'
  end

  private def post_params
    params.require(:post).permit(:content)
  end
end
