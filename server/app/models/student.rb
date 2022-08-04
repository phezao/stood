class Student < ApplicationRecord
  has_one :user, as: :role
end
