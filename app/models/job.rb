class Job < ApplicationRecord
  belongs_to :company
  validates :company_id, presence: true
  validates :job_description, presence: true
  validates :employment_type, presence: true
  validates :responsibilities, presence: true
  validates :requirements, presence: true
end
