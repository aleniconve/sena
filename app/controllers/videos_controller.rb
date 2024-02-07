class VideosController < ApplicationController

  def show
    @video = Video.find(params[:id])
    @bookmark = Bookmark.new
  end

  def index
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
end
