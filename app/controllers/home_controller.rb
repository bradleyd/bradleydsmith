class HomeController < ApplicationController
  def index
    @posts  = Post.includes(:comments).paginate(:page => params[:page], :per_page => 5)
    @random = Post.last 
  end

  def about

  end

  def contact
    
  end
end
