class PagesController < ApplicationController

  def welcome
    @header = "This is a welcome page."

    render :welcome
  end

  def about
    @header = "This is an about page."
  end

  def contest
    @heaeder = "This is a contest page?"
  end

  def kitten
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

end
