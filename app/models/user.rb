class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :last_name, :presence => true
  validates :first_name, :presence => true
  validates :age, :presence => true
  validates :gender, :presence => true
  #validates :is_employer, :presence => true
  #validates :is_manager, :presence => true
  has_many :jobs
  has_one_attached :cv
end
