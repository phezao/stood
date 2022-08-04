class Professor < ApplicationRecord
  has_one :user, as: :role
end
