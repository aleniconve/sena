class PagesController < ApplicationController
  def home
    @videos = Video.all.sample(8)
    @spotlight = Video.where("name like ?", "%Alphabet%")
                  .or(Video.where("name like ?", "%Numbers%"))
    @bookmark = Bookmark.new
  end

  def profile
    if current_user
      @folders = Folder.where(user_id: current_user.id)
      @folder = Folder.new
      @video = Video.new
    else
      redirect_to user_session_path
    end
  end
end
