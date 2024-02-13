class PagesController < ApplicationController
  def home
    @bookmark = Bookmark.new
    if current_user
      @videos = Video.all.sample(8)
    else
      @videos = Video.all.sample(8)
    end
    @most_searched_videos = Video.where("search_count > 0").order(search_count: :desc).limit(10)
    @most_searched_videos ||= []
  end

  def profile
    if current_user
      @folders_with_videos = current_user.folders.includes(:videos)
      @folders = Folder.where(user_id: current_user.id)
      @folder = Folder.new
      @video = Video.new
    else
      redirect_to user_session_path
    end
  end
end
