class Report < ApplicationRecord
  has_many :questions
  has_many :job_tags
end
