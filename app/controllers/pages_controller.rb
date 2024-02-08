class PagesController < ApplicationController
  def home
    @videos = Video.all
    @bookmark = Bookmark.new
  end

  def profile
    @folders = Folder.all
    @folder = Folder.new
  end
end
