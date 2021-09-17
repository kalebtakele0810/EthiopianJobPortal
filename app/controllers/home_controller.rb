class HomeController < ApplicationController
  #before_action :authenticate_user! 
  JOBS_PER_PAGE=5
  
  def index
  end
  def about
    
  end
  def cv_tips
    @page = params.fetch(:page,0).to_i
    @JobCategory_id = params.fetch(:JobCategory_id,0).to_i
    
    @jobsPageCount=(Job.where('deadlineDate >= ?',  Date.today).all.count/JOBS_PER_PAGE) 
    @jobs = Job.where('deadlineDate >= ? ',  Date.today).offset(@page * JOBS_PER_PAGE).limit(JOBS_PER_PAGE)
    @job_categories = JobCategory.all
    @featured_jobs = Job.where('deadlineDate >= ?',  Date.today).order(numberOfviews: :desc).limit(JOBS_PER_PAGE)
  end
end
