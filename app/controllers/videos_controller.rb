class VideosController < ApplicationController

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    @video.user = current_user
    if @video.save
      folder = Folder.find(@video.category)
      Bookmark.create(folder: folder, video: @video)
      redirect_to profile_path #notice: "#{@video.name} was successfully uploaded!"
    else
      redirect_to profile_path #alert: "Video upload failed!"
    end
  end

  def show
    @bookmark = Bookmark.new
    @video = Video.find(params[:id])
    @video.increment!(:search_count)
    @related_videos = Video.where(category: @video.category).sample(4)

    @fav_id = Folder.where(name: "Favorites").and(Folder.where(user: current_user))
    @favorite = Bookmark.where(video: @video).and(Bookmark.where(folder_id: @fav_id))
    @folders = Folder.where(user: current_user).order(:name)
  end

  def index
    if params[:search]
      @keyword = params[:search].strip
      if @keyword.blank?
        @popular_videos = Video.all.sample(8)
      else
        @results = Video.where("lower(name) like ?", "%#{@keyword.downcase}%")
                   .or(Video.where("lower(category) like ?", "%#{@keyword.downcase}%"))
      end
      if @results.blank?
        @popular_videos = Video.all.sample(4)
      else
        @videos = @results
      end
    end

    @fav_id = Folder.where(name: "Favorites").and(Folder.where(user: current_user))
  end

  private

  def video_params
    params.require(:video).permit(:name, :description, :video, :category)
  end
end
