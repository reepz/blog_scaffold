class SztalugisController < ApplicationController
  before_action :set_sztalugi, only: [:show, :edit, :update, :destroy]

  # GET /sztalugis
  # GET /sztalugis.json
  def index
    @sztalugis = Sztalugi.all
  end

  # GET /sztalugis/1
  # GET /sztalugis/1.json
  def show
  end

  # GET /sztalugis/new
  def new
    @sztalugi = Sztalugi.new
  end

  # GET /sztalugis/1/edit
  def edit
  end

  # POST /sztalugis
  # POST /sztalugis.json
  def create
    @sztalugi = Sztalugi.new(sztalugi_params)

    respond_to do |format|
      if @sztalugi.save
        format.html { redirect_to @sztalugi, notice: 'Sztalugi was successfully created.' }
        format.json { render :show, status: :created, location: @sztalugi }
      else
        format.html { render :new }
        format.json { render json: @sztalugi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sztalugis/1
  # PATCH/PUT /sztalugis/1.json
  def update
    respond_to do |format|
      if @sztalugi.update(sztalugi_params)
        format.html { redirect_to @sztalugi, notice: 'Sztalugi was successfully updated.' }
        format.json { render :show, status: :ok, location: @sztalugi }
      else
        format.html { render :edit }
        format.json { render json: @sztalugi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sztalugis/1
  # DELETE /sztalugis/1.json
  def destroy
    @sztalugi.destroy
    respond_to do |format|
      format.html { redirect_to sztalugis_url, notice: 'Sztalugi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sztalugi
      @sztalugi = Sztalugi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sztalugi_params
      params.fetch(:sztalugi, {})
    end
end
