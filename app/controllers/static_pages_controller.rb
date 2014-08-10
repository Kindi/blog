class StaticPagesController < ApplicationController
  def home
    @blogposts = Blogpost.limit(3)
  end

  def about
  end

  def blog
    @blogposts = Blogpost.search(params[:search])
  end

  def projects
  end
  
end
