class Appointment < ApplicationRecord
  has_one :subject
  belongs_to :professor
  belongs_to :user
end
