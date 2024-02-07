class PagesController < ApplicationController
  def home
    @videos = Video.all
    @bookmark = Bookmark.new
  end

  def dashboard
    # write 2 index for users that have signed up
  end
end
