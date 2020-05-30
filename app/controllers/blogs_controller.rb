class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def create
  end

  def edit
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end
end
