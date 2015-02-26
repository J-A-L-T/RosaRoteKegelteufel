class ImagesController < InheritedResources::Base

  private

  def image_params
    params.require(:image).permit(:title, :album_id, :file)
  end
end