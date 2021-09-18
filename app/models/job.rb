class Job < ApplicationRecord
	belongs_to :career_level, :optional => true
	belongs_to :employement_type, :optional => true
	belongs_to :employer, :optional => true
	belongs_to :job_category, :optional => true
	belongs_to :destination, :optional => true
	belongs_to :user, :optional => true
	has_rich_text :howtoApply
	has_rich_text :discription
	has_rich_text :jobRequirements
	#validates :Employer_id, :presence => true
	#validates :is_approved, :presence => true
	#validates :createdBy_id, :presence => true
end
