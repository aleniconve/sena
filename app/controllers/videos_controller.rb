class VideosController < ApplicationController
  def index
    if params[:search]
      @keyword = params[:search].strip
      if @keyword.blank?
        @videos = Video.all
      else
        @search = Video.where("lower(name) like ?", "%#{@keyword.downcase}%")
                              .or(Video.where("lower(category) like ?", "%#{@keyword.downcase}%"))
      end
      if @search.blank?
        @message = "No results. Please run a new search."
      else
        @videos = @search
      end
    end
  end
end
