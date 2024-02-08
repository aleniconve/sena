class PagesController < ApplicationController
  def home
    @videos = Video.all
    @bookmark = Bookmark.new
  end

  def profile
    @folders = Folder.all
  end
end
