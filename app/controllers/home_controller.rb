class HomeController < ApplicationController
  def index
    @posts  = Post.includes(:comments).paginate(:page => params[:page], :per_page => 15)
    @random = Post.last 
  end
end
