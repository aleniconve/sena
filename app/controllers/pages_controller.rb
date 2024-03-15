class PagesController < ApplicationController
  def home
    @bookmark = Bookmark.new
    @videos = Video.all.sample(4)
    @most_searched_videos = Video.where("search_count > 0").order(search_count: :desc).limit(4)
    @most_searched_videos ||= []
    if current_user && current_user.folders.find_by(name: "Favorites").blank?
      Folder.create(name: "Favorites", user_id: current_user.id)
    end
  end

  def profile
    if current_user
      @favorites_folder = current_user.folders.find_by(name: "Favorites")
      @folders_with_videos = current_user.folders.includes(:videos)
      @folders = current_user.folders.where.not(name: "Favorites").order(created_at: :desc)

      @bookmarks_count = 0
      @folders.each do |folder|
        @bookmarks_count += folder.bookmarks.count
      end
      @folder = Folder.new
      @video = Video.new
    else
      redirect_to user_session_path
    end
  end
end
