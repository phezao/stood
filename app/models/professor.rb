class Professor < ApplicationRecord
  belongs_to :university
  belongs_to :user
  has_many :appointments
  has_many :professor_subjects, dependent: :destroy 
  has_many :subjects, through: :professor_subjects
end
