class User < ApplicationRecord
  belongs_to :role, polymorphic: true
  validates :email, :password_digest, presence: true
end
