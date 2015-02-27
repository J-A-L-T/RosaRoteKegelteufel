class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /images
  # GET /images.json
  def index
    @images = Image.all
  end

  # GET /images/1
  # GET /images/1.json
  def show 
  @image = Image.find(params[:id])
  end

  # GET /images/new
  def new
    @image = Image.new
  end

  # GET /images/1/edit
  def edit
  end

  # POST /images
  # POST /images.json
    def create 
    @image = Image.new(image_params) 
  
    if @image.save 
      ;flash[:notice] = 'Image was successfully created.' 
      redirect_to(@image.album) 
    else 
      ;flash[:alert] = @image.errors.full_messages.to_sentence
      redirect_to(@image.album) 
    end 
  end 

  # PATCH/PUT /images/1
  # PATCH/PUT /images/1.json
  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to @image, notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        ;flash[:alert] = @image.errors.full_messages.to_sentence
      end
    end
end
