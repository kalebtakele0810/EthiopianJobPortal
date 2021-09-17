class Employer < ApplicationRecord
	has_many :job
	has_one_attached :logo
	validates :logo, :presence => true
end
