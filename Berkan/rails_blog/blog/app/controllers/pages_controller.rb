class PagesController < ApplicationController
  def home
    @title = "This is title"
    @time = Time.now
  end

  def about
  end

  def contact
  end
end
