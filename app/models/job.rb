class Job < ApplicationRecord
	belongs_to :career_level, :optional => true
	belongs_to :employement_type, :optional => true
	belongs_to :employer, :optional => true
	belongs_to :job_category, :optional => true
	belongs_to :destination, :optional => true
	belongs_to :user, :optional => true
	#validates :Employer_id, :presence => true
	#validates :is_approved, :presence => true
	#validates :createdBy_id, :presence => true
end
