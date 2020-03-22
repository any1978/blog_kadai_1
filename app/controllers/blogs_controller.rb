class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy] # destroyアクションを追加
  def index
    @blogs = Blog.all
    # binding.pry
    # raise
  end
  
  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if params[:back]
      render :new
    elsif @blog.save
        redirect_to blogs_path, notice: "tweetを投稿しました！"
    else
      render :new
    end
  end
  
  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "tweetを編集しました！"
    else
      render :edit
    end
  end
  
  def destroy
    @blog.destroy
    redirect_to blogs_path, notice:"tweetを削除しました！"
  end
  
  def confirm
    @blog = Blog.new(blog_params)
    render :new if @blog.invalid?   
  end 

  private
  def blog_params
    params.require(:blog).permit(:content)
  end

  # idをキーとして値を取得するメソッドを追加
  def set_blog
    @blog = Blog.find(params[:id])
  end
end
