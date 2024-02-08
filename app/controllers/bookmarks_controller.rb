class BookmarksController < ApplicationController

  def create
    @video = Video.find(params[:video_id])
    @folder = Folder.find(params[:bookmark][:folder_id])
    @bookmark = Bookmark.new(video: @video, folder: @folder)
    if @bookmark.save
      redirect_to folder_path(@folder)
    end
  end
end
