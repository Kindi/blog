class BlogpostsController < ApplicationController
  def show
    @blogpost = Blogpost.find(params[:id])
  end
  
  def delete
  end
end
