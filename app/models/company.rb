class Company < ApplicationRecord
  has_many :jobs, dependent: :destroy
  has_many :users
  validates :name, presence: true
  validates :website, presence: true, format: {
      :with => /\A(http|https):\/\/(www\.)?[a-z0-9]+[\-]?[a-z0-9]+\.(com|org|edu|ai|ml|co.[a-z]{2})\z/,
      :message => "Valid URL required. Please input in the form http(s)://(website)"}
  validates :headquarters, presence: true
  validates :size, presence: true
  validates :founded, presence: true
  validates :industry, presence: true
  validates :revenue, presence: true
  validates :synopsis, presence: true
end
