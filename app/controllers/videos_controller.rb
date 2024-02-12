class VideosController < ApplicationController

  def create
    @video = Video.new(video_params)
    @video.user = current_user
    if @video.save
      redirect_to profile_path, notice: "#{@video.name} was successfully uploaded!"
    else
      redirect_to profile_path, alert: "Video upload failed!"
    end
  end


  def show
    @video = Video.find(params[:id])
    @bookmark = Bookmark.new
  end

  def index
    @bookmark = Bookmark.new
    if params[:search]
      @keyword = params[:search].strip
      if @keyword.blank?
      else
        @search = Video.where("lower(name) like ?", "%#{@keyword.downcase}%")
                  .or(Video.where("lower(category) like ?", "%#{@keyword.downcase}%"))
      end
      if @search.blank?
        @message = "No results."
      else
        @videos = @search
      end
    end
  end

  private
  def video_params
    params.require(:video).permit(:name, :description, :video)
  end
end
