class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.root.order(created_at: :desc)
    @new_post = Post.new
  end
end
