class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def blog
    @blogposts = Blogpost.all
  end

  def projects
  end
end
