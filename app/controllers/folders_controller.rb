class FoldersController < ApplicationController

  def create
    @folder = Folder.new(folder_params)
    @folder.user = current_user
    if @folder.save
      redirect_to profile_path, notice: "#{@folder.name} was successfully created!"
    else
      render "pages/profile"
    end
  end


  private

  def folder_params
    params.require(:folder).permit(:name)
  end
end
