class PagesController < ApplicationController
  def home
    @videos = Video.all
  end

  def dashboard
    # write 2 index for users that have signed up
  end
end
