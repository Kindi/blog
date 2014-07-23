class StaticPagesController < ApplicationController
  def home
    @blogposts = Blogpost.order(:title).page(1).per(1)
  end

  def about
  end

  def blog
    @blogposts = Blogpost.order(:title).page(params[:page]).per(5)
  end

  def projects
  end
end
