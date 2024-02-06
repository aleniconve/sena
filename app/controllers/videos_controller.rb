class VideosController < ApplicationController
  def show
    @video = Video.find[:id]
  end
end
