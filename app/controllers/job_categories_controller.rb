class JobCategoriesController < ApplicationController
  before_action :set_job_category, only: %i[ show edit update destroy ]
  before_action :authenticate_user! 
  # GET /job_categories or /job_categories.json
  def index
    @job_categories = JobCategory.all
  end

  # GET /job_categories/1 or /job_categories/1.json
  def show
  end

  # GET /job_categories/new
  def new
    @job_category = JobCategory.new
  end

  # GET /job_categories/1/edit
  def edit
  end

  # POST /job_categories or /job_categories.json
  def create
    @job_category = JobCategory.new(job_category_params)

    respond_to do |format|
      if @job_category.save
        format.html { redirect_to @job_category, notice: "Job category was successfully created." }
        format.json { render :show, status: :created, location: @job_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_categories/1 or /job_categories/1.json
  def update
    respond_to do |format|
      if @job_category.update(job_category_params)
        format.html { redirect_to @job_category, notice: "Job category was successfully updated." }
        format.json { render :show, status: :ok, location: @job_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_categories/1 or /job_categories/1.json
  def destroy
    @job_category.destroy
    respond_to do |format|
      format.html { redirect_to job_categories_url, notice: "Job category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_category
      @job_category = JobCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_category_params
      params.require(:job_category).permit(:name)
    end
end
