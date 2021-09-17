class JobSearchTitlesController < ApplicationController
  before_action :set_job_search_title, only: %i[ show edit update destroy ]
  before_action :authenticate_user! 
  # GET /job_search_titles or /job_search_titles.json
  def index
    @job_search_titles = JobSearchTitle.all
  end

  # GET /job_search_titles/1 or /job_search_titles/1.json
  def show
  end

  # GET /job_search_titles/new
  def new
    @job_search_title = JobSearchTitle.new
  end

  # GET /job_search_titles/1/edit
  def edit
  end

  # POST /job_search_titles or /job_search_titles.json
  def create
    @job_search_title = JobSearchTitle.new(job_search_title_params)

    respond_to do |format|
      if @job_search_title.save
        format.html { redirect_to @job_search_title, notice: "Job search title was successfully created." }
        format.json { render :show, status: :created, location: @job_search_title }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_search_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_search_titles/1 or /job_search_titles/1.json
  def update
    respond_to do |format|
      if @job_search_title.update(job_search_title_params)
        format.html { redirect_to @job_search_title, notice: "Job search title was successfully updated." }
        format.json { render :show, status: :ok, location: @job_search_title }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_search_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_search_titles/1 or /job_search_titles/1.json
  def destroy
    @job_search_title.destroy
    respond_to do |format|
      format.html { redirect_to job_search_titles_url, notice: "Job search title was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_search_title
      @job_search_title = JobSearchTitle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_search_title_params
      params.require(:job_search_title).permit(:name)
    end
end
