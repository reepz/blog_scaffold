class WallPaintingsController < ApplicationController
  before_action :set_wall_painting, only: [:show, :edit, :update, :destroy]

  # GET /wall_paintings
  # GET /wall_paintings.json
  def index
    @wall_paintings = WallPainting.all
  end

  # GET /wall_paintings/1
  # GET /wall_paintings/1.json
  def show
  end

  # GET /wall_paintings/new
  def new
    @wall_painting = WallPainting.new
  end

  # GET /wall_paintings/1/edit
  def edit
  end

  # POST /wall_paintings
  # POST /wall_paintings.json
  def create
    @wall_painting = WallPainting.new(wall_painting_params)

    respond_to do |format|
      if @wall_painting.save
        format.html { redirect_to @wall_painting, notice: 'Wall painting was successfully created.' }
        format.json { render :show, status: :created, location: @wall_painting }
      else
        format.html { render :new }
        format.json { render json: @wall_painting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wall_paintings/1
  # PATCH/PUT /wall_paintings/1.json
  def update
    respond_to do |format|
      if @wall_painting.update(wall_painting_params)
        format.html { redirect_to @wall_painting, notice: 'Wall painting was successfully updated.' }
        format.json { render :show, status: :ok, location: @wall_painting }
      else
        format.html { render :edit }
        format.json { render json: @wall_painting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wall_paintings/1
  # DELETE /wall_paintings/1.json
  def destroy
    @wall_painting.destroy
    respond_to do |format|
      format.html { redirect_to wall_paintings_url, notice: 'Wall painting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wall_painting
      @wall_painting = WallPainting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wall_painting_params
      params.fetch(:wall_painting, {})
    end
end
