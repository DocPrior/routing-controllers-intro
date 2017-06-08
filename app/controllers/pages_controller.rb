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

end
