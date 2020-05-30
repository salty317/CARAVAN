class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.fing(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    blogs = Blog.new(blog_params)
    blogs.save
    redirect_to blog_path(blog.id)
  end

  def edit
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end
end
