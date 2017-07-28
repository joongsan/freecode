class HomeController < ApplicationController
  def index
    @post = Post.all
  end
  
  def new
    
  end
  
  def write
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.save
    redirect_to '/home/index'
  end
  
  def destroy
    delete = Post.find(params[:id])
    delete.delete
    redirect_to '/home/index'
  end
  
  def edit
    @edit = Post.find(params[:id])
  end
  
  def update
    update = Post.find(params[:id])
    update.title = params[:title]
    update.content = params[:content]
    update.save
    
    redirect_to '/home/index'
  end
  
end
