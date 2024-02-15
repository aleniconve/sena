class FoldersController < ApplicationController

  def index
    if current_user
      @favorites_folder = current_user.folders.find_by(name: "Favorites")
      @folders_with_videos = current_user.folders.includes(:videos)
      @folders = current_user.folders.where.not(name: "Favorites").order(created_at: :desc)
      @folder = Folder.new
      @video = Video.new
    else
      redirect_to user_session_path
    end
  end

  def show
    @folder = Folder.find(params[:id])
    @bookmarks = @folder.bookmarks.order(created_at: :desc)
    @bookmark = Bookmark.new
    # @bookmark = Bookmark.find(params[:id])
    # @video = Video.find(params[:id])
    # display all bookmarks from this folder
  end

  def create
    @folder = Folder.new(folder_params)
    @folder.name
    @folder.user = current_user
    if @folder.save
      redirect_to folders_path #notice: "#{@folder.name} was successfully created!"
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
