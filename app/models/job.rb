class Job < ApplicationRecord
  belongs_to :company
  has_many :applications
  validates :company_id, presence: true
  validates :job_description, presence: true
  validates :employment_type, presence: true
  validates :responsibilities, presence: true
  validates :requirements, presence: true
end
