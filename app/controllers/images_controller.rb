class ImagesController < InheritedResources::Base
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  def destroy
  @image.destroy
      respond_to do |format|
      format.html { redirect_to :back, notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_image
    @image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:title, :album_id, :file)
  end
end