class Application < ApplicationRecord
  mount_uploader :resume, ResumeUploader
  belongs_to :user
  validates :linkedin_url, allow_blank: true, format: {
      :with => /\A((http|https):\/\/)?(www\.)?(linkedin\.com\/in\/)+[a-z0-9\-]+\z/,
      :message => "Valid LinkedIn URL required."}
  validates :portfolio_url, allow_blank: true, format: {
      :with => /\A(http|https):\/\/(www\.)?[a-z0-9]+[\-]?[a-z0-9]+\.(com|org|edu|ai|ml|co.[a-z]{2})\z/,
      :message => "Valid URL required. Please input in the form http(s)://(website)"}
  validates :gender, presence: true
  validates :race, presence: true
  validates :veteran, presence: true
  validates :disability, presence: true
end
