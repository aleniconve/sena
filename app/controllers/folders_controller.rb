class FoldersController < ApplicationController

  def show
    @folder = Folder.find(params[:id])
    @videos = @folder.videos
    @bookmark = Bookmark.new
    @fav_id = Folder.where(name: "Favorites").and(Folder.where(user: current_user))
    @favorite = Bookmark.where(video: @video).and(Bookmark.where(folder_id: @fav_id))
    # @bookmark = Bookmark.find(params[:id])
    # @video = Video.find(params[:id])
    # display all bookmarks from this folder
  end

  def create
    @folder = Folder.new(folder_params)
    @folder.name
    @folder.user = current_user
    if @folder.save
      redirect_to profile_path #notice: "#{@folder.name} was successfully created!"
    else
      render "pages/profile"
    end
  end

  def destroy
    @folder = Folder.find(params[:id])
    @folder.destroy
    redirect_to folder_path
  end

  private

  def folder_params
    params.require(:folder).permit(:name)
  end
end
