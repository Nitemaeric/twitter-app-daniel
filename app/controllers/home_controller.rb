class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = current_user.posts.root

    puts ENV['MY_SECRET_DATA']
  end
end
