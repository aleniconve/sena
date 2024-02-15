class BookmarksController < ApplicationController

  def create
    @video = Video.find(params[:video_id])
    @folder = Folder.find(params[:bookmark][:folder_id])
    @bookmark = Bookmark.new(video: @video, folder: @folder)
    if @bookmark.save
      redirect_to video_path(@video)
    end
  end

  def destroy
    # @video = Video.find(params[:video_id])
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to folder_path(@bookmark.folder)
  end
end
