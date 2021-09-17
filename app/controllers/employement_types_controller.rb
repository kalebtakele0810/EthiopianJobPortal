class EmployementTypesController < ApplicationController
  before_action :set_employement_type, only: %i[ show edit update destroy ]
  before_action :authenticate_user! 
  # GET /employement_types or /employement_types.json
  def index
    @employement_types = EmployementType.all
  end

  # GET /employement_types/1 or /employement_types/1.json
  def show
  end

  # GET /employement_types/new
  def new
    @employement_type = EmployementType.new
  end

  # GET /employement_types/1/edit
  def edit
  end

  # POST /employement_types or /employement_types.json
  def create
    @employement_type = EmployementType.new(employement_type_params)

    respond_to do |format|
      if @employement_type.save
        format.html { redirect_to @employement_type, notice: "Employement type was successfully created." }
        format.json { render :show, status: :created, location: @employement_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employement_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employement_types/1 or /employement_types/1.json
  def update
    respond_to do |format|
      if @employement_type.update(employement_type_params)
        format.html { redirect_to @employement_type, notice: "Employement type was successfully updated." }
        format.json { render :show, status: :ok, location: @employement_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employement_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employement_types/1 or /employement_types/1.json
  def destroy
    @employement_type.destroy
    respond_to do |format|
      format.html { redirect_to employement_types_url, notice: "Employement type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employement_type
      @employement_type = EmployementType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employement_type_params
      params.require(:employement_type).permit(:name)
    end
end
