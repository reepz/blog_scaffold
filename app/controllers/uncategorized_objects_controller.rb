class UncategorizedObjectsController < ApplicationController
  before_action :set_uncategorized_object, only: [:show, :edit, :update, :destroy]

  # GET /uncategorized_objects
  # GET /uncategorized_objects.json
  def index
    @uncategorized_objects = UncategorizedObject.all
  end

  # GET /uncategorized_objects/1
  # GET /uncategorized_objects/1.json
  def show
  end

  # GET /uncategorized_objects/new
  def new
    @uncategorized_object = UncategorizedObject.new
  end

  # GET /uncategorized_objects/1/edit
  def edit
  end

  # POST /uncategorized_objects
  # POST /uncategorized_objects.json
  def create
    @uncategorized_object = UncategorizedObject.new(uncategorized_object_params)

    respond_to do |format|
      if @uncategorized_object.save
        format.html { redirect_to @uncategorized_object, notice: 'Uncategorized object was successfully created.' }
        format.json { render :show, status: :created, location: @uncategorized_object }
      else
        format.html { render :new }
        format.json { render json: @uncategorized_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uncategorized_objects/1
  # PATCH/PUT /uncategorized_objects/1.json
  def update
    respond_to do |format|
      if @uncategorized_object.update(uncategorized_object_params)
        format.html { redirect_to @uncategorized_object, notice: 'Uncategorized object was successfully updated.' }
        format.json { render :show, status: :ok, location: @uncategorized_object }
      else
        format.html { render :edit }
        format.json { render json: @uncategorized_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uncategorized_objects/1
  # DELETE /uncategorized_objects/1.json
  def destroy
    @uncategorized_object.destroy
    respond_to do |format|
      format.html { redirect_to uncategorized_objects_url, notice: 'Uncategorized object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uncategorized_object
      @uncategorized_object = UncategorizedObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uncategorized_object_params
      params.fetch(:uncategorized_object, {})
    end
end
