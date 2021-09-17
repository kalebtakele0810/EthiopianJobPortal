require 'date'
class JobsController < ApplicationController
  before_action :set_job, only: %i[ show edit update destroy]
  before_action :authenticate_user! , only: %i[edit update destroy new create]
  JOBS_PER_PAGE=5
  # GET /jobs or /jobs.json
  
  def index
    @page = params.fetch(:page,0).to_i
    @JobCategory_id = params.fetch(:JobCategory_id,0).to_i
    
    @jobsPageCount=Job.where("\"deadlineDate\" >= :date",  date: Date.today).all.count/JOBS_PER_PAGE
    @jobs = Job.where("\"deadlineDate\" >= :date",  date: Date.today).offset(@page * JOBS_PER_PAGE).limit(JOBS_PER_PAGE)
    @job_categories = JobCategory.all
    @featured_jobs = Job.where("\"deadlineDate\" >= :date",  date: Date.today).order(numberOfviews: :desc).limit(JOBS_PER_PAGE)
  end

  def find_by_category
   @page = params.fetch(:page,0).to_i
    @JobCategory_id = params.fetch(:JobCategory_id,0).to_i
    
    @jobsPageCount=(Job.where("\"deadlineDate\" >= :date and \"JobCategory_id\" = :jobcategory",  date: Date.today, jobcategory: @JobCategory_id).all.count/JOBS_PER_PAGE) 
    @jobs = Job.where("\"deadlineDate\" >= :date and \"JobCategory_id\" = :jobcategory",  date: Date.today, jobcategory: @JobCategory_id).offset(@page * JOBS_PER_PAGE).limit(JOBS_PER_PAGE)
    @job_categories = JobCategory.all
    @featured_jobs = Job.where("\"deadlineDate\" >= :date and \"JobCategory_id\" = :jobcategory",  date: Date.today, jobcategory: @JobCategory_id).order(numberOfviews: :desc).limit(JOBS_PER_PAGE)
  end

  # GET /jobs/1 or /jobs/1.json
  def show
      @page = params.fetch(:page,0).to_i
      @JobCategory_id = params.fetch(:JobCategory_id,0).to_i
      
       @jobsPageCount=Job.where("\"deadlineDate\" >= :date",  date: Date.today).all.count/JOBS_PER_PAGE
      @jobs = Job.where("\"deadlineDate\" >= :date",  date: Date.today).offset(@page * JOBS_PER_PAGE).limit(JOBS_PER_PAGE)
      @job_categories = JobCategory.all
      @featured_jobs = Job.where("\"deadlineDate\" >= :date",  date: Date.today).order(numberOfviews: :desc).limit(JOBS_PER_PAGE)
      
      if @job.numberOfviews == nil    
        @job.numberOfviews =1 
        @job.save
      else 
        @job.numberOfviews +=1 
        @job.save
      end
  end

  # GET /jobs/new
  def new
     @page = params.fetch(:page,0).to_i
    @JobCategory_id = params.fetch(:JobCategory_id,0).to_i
    
     @jobsPageCount=Job.where("\"deadlineDate\" >= :date",  date: Date.today).all.count/JOBS_PER_PAGE
    @jobs = Job.where("\"deadlineDate\" >= :date",  date: Date.today).offset(@page * JOBS_PER_PAGE).limit(JOBS_PER_PAGE)
    @job_categories = JobCategory.all
    @featured_jobs = Job.where("\"deadlineDate\" >= :date",  date: Date.today).order(numberOfviews: :desc).limit(JOBS_PER_PAGE)

    
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
     @page = params.fetch(:page,0).to_i
      @JobCategory_id = params.fetch(:JobCategory_id,0).to_i
      
       @jobsPageCount=Job.where("\"deadlineDate\" >= :date",  date: Date.today).all.count/JOBS_PER_PAGE
    @jobs = Job.where("\"deadlineDate\" >= :date",  date: Date.today).offset(@page * JOBS_PER_PAGE).limit(JOBS_PER_PAGE)
    @job_categories = JobCategory.all
    @featured_jobs = Job.where("\"deadlineDate\" >= :date",  date: Date.today).order(numberOfviews: :desc).limit(JOBS_PER_PAGE)

     
  end

  # POST /jobs or /jobs.json
  def create
    @page = params.fetch(:page,0).to_i
      @JobCategory_id = params.fetch(:JobCategory_id,0).to_i
      
      @jobsPageCount=Job.where("\"deadlineDate\" >= :date",  date: Date.today).all.count/JOBS_PER_PAGE
    @jobs = Job.where("\"deadlineDate\" >= :date",  date: Date.today).offset(@page * JOBS_PER_PAGE).limit(JOBS_PER_PAGE)
    @job_categories = JobCategory.all
    @featured_jobs = Job.where("\"deadlineDate\" >= :date",  date: Date.today).order(numberOfviews: :desc).limit(JOBS_PER_PAGE)


    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: "Job was successfully created." }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1 or /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: "Job was successfully updated." }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1 or /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: "Job was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_params
      params.require(:job).permit(:title, :Salary, :postedDate, :deadlineDate, :discription, :jobRequirements, :howtoApply, :numberOfviews, :Location_id, :CareerLevel_id, :EmployementType_id, :Employer_id, :JobCategory_id, :is_approved,:createdBy_id, :destination_id)
    end
end
