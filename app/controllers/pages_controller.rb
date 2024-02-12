class PagesController < ApplicationController
  def home
    if current_user
      @videos = Video.all.sample(8)
      @bookmark = Bookmark.new
    else
      @videos = Video.all.sample(8)
    end
  end

  def profile
      if current_user
        @folders = Folder.where(user_id: current_user.id)
        @folder = Folder.new
      else
        redirect_to user_session_path
      end
  end
end
