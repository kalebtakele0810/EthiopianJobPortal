json.extract! job, :id, :title, :Salary, :postedDate, :deadlineDate, :discription, :jobRequirements, :howtoApply, :numberOfviews, :created_at, :updated_at
json.url job_url(job, format: :json)
