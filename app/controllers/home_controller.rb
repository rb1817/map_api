class HomeController < ApplicationController
  def index
    @posts = Post.all
    @p = Post.first
    p @p
  end

  def new
     @post = Post.new
  end

  def create
      Post.create(post_params)
    # Post.create(title: params[:title],lat: params[:lat],lng: params[:lng])
    # @post = Post.new
    # @post.title = params[:title]
    # @post.lat = params[:lat]
    # @post.lng = params[:lng]
    # @post.save
    
    redirect_to "/home/index"
  end
  
  private
    def post_params
      params.require(:post).permit(:title,:lat,:lng)
    end
end
