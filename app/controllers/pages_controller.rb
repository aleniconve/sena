class PagesController < ApplicationController
  def home
    @bookmark = Bookmark.new
    if current_user
      @videos = Video.all.sample(4)
    else
      @videos = Video.all.sample(4)
    end
    @most_searched_videos = Video.where("search_count > 0").order(search_count: :desc).limit(4)
    @most_searched_videos ||= []
  end

  def profile
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
end
