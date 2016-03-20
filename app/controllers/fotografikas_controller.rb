class FotografikasController < ApplicationController
  before_action :set_fotografika, only: [:show, :edit, :update, :destroy]

  # GET /fotografikas
  # GET /fotografikas.json
  def index
    @fotografikas = Fotografika.all
  end

  # GET /fotografikas/1
  # GET /fotografikas/1.json
  def show
  end

  # GET /fotografikas/new
  def new
    @fotografika = Fotografika.new
  end

  # GET /fotografikas/1/edit
  def edit
  end

  # POST /fotografikas
  # POST /fotografikas.json
  def create
    @fotografika = Fotografika.new(fotografika_params)

    respond_to do |format|
      if @fotografika.save
        format.html { redirect_to @fotografika, notice: 'Fotografika was successfully created.' }
        format.json { render :show, status: :created, location: @fotografika }
      else
        format.html { render :new }
        format.json { render json: @fotografika.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fotografikas/1
  # PATCH/PUT /fotografikas/1.json
  def update
    respond_to do |format|
      if @fotografika.update(fotografika_params)
        format.html { redirect_to @fotografika, notice: 'Fotografika was successfully updated.' }
        format.json { render :show, status: :ok, location: @fotografika }
      else
        format.html { render :edit }
        format.json { render json: @fotografika.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fotografikas/1
  # DELETE /fotografikas/1.json
  def destroy
    @fotografika.destroy
    respond_to do |format|
      format.html { redirect_to fotografikas_url, notice: 'Fotografika was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fotografika
      @fotografika = Fotografika.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fotografika_params
      params.fetch(:fotografika, {})
    end
end
