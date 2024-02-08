class FoldersController < ApplicationController
  def show
    @bookmark = Bookmark.where... 
    # display all bookmarks from this folder
  end
end
