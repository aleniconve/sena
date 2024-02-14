class FoldersController < ApplicationController

  def show
    @folder = Folder.find(params[:id])
    @videos = @folder.videos
    @bookmark = Bookmark.new
    # @bookmark = Bookmark.find(params[:id])
    # @video = Video.find(params[:id])
    # display all bookmarks from this folder
  end

  def create
    @folder = Folder.new(folder_params)
    @folder.name.capitalize!
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
