class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "This is a welcome page."
    root_path
  end

  def about
    @header = "This is an about page."
    about_path
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to root_path
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    if params[:magic_word] != "i_love_cats"
      flash[:alert] = "Sorry, you're not authorized to see this page"
      redirect_to root_path
    end
  end
end
