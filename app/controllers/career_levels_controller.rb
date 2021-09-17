class CareerLevelsController < ApplicationController
  before_action :set_career_level, only: %i[ show edit update destroy ]
  before_action :authenticate_user! 
  # GET /career_levels or /career_levels.json
  def index
    @career_levels = CareerLevel.all
  end

  # GET /career_levels/1 or /career_levels/1.json
  def show
  end

  # GET /career_levels/new
  def new
    @career_level = CareerLevel.new
  end

  # GET /career_levels/1/edit
  def edit
  end

  # POST /career_levels or /career_levels.json
  def create
    @career_level = CareerLevel.new(career_level_params)

    respond_to do |format|
      if @career_level.save
        format.html { redirect_to @career_level, notice: "Career level was successfully created." }
        format.json { render :show, status: :created, location: @career_level }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @career_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /career_levels/1 or /career_levels/1.json
  def update
    respond_to do |format|
      if @career_level.update(career_level_params)
        format.html { redirect_to @career_level, notice: "Career level was successfully updated." }
        format.json { render :show, status: :ok, location: @career_level }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @career_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /career_levels/1 or /career_levels/1.json
  def destroy
    @career_level.destroy
    respond_to do |format|
      format.html { redirect_to career_levels_url, notice: "Career level was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_career_level
      @career_level = CareerLevel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def career_level_params
      params.require(:career_level).permit(:name)
    end
end
