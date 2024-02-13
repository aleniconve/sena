class VideosController < ApplicationController

  def create
    @video = Video.new(video_params)
    @video.user = current_user
    if @video.save
      folder = Folder.find(@video.category)
      Bookmark.create(folder: folder, video: @video)
      redirect_to profile_path, notice: "#{@video.name} was successfully uploaded!"
    else
      redirect_to profile_path, alert: "Video upload failed!"
    end
  end

  def show
    @video = Video.find(params[:id])
    @video.increment!(:search_count)
    @bookmark = Bookmark.new
    @search = params[:search]
    @related_videos = Video.where(category: @video.category).sample(4)
  end

  def index
    @bookmark = Bookmark.new
    @search = params[:search]
    if params[:search]
      @keyword = params[:search].strip
      if @keyword.blank?
      else
        @results = Video.where("lower(name) like ?", "%#{@keyword.downcase}%")
                  .or(Video.where("lower(category) like ?", "%#{@keyword.downcase}%"))
      end
      if @results.blank?
        @message = "No results."
      else
        @videos = @results
      end
    end
  end

  private
  def video_params
    params.require(:video).permit(:name, :description, :video, :category)
  end
end
