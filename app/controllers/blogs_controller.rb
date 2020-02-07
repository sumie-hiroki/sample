class BlogsController < ApplicationController
  def index
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.create(blog_params)
    redirect_to blog_path(@blog)
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
