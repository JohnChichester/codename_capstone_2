class User < ApplicationRecord
  has_secure_password
  has_many :reports
  has_many :job_tags, through: :reports
  validates :username, presence: true, uniqueness: true
end
