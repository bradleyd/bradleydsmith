class HomeController < ApplicationController
  def index
    @posts  = Post.includes(:comments).order("created_at DESC").
      paginate(:page => params[:page], :per_page => 5)
    @random = Post.last 
  end

  def about

  end

  def contact
    
  end
end
