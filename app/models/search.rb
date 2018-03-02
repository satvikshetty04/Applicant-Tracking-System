class Search < ApplicationRecord
  # Function to search for companies
  def search_companies
    companies = Company.all
    companies = companies.where(["name LIKE ?", "%#{name}%"]) if name.present?
    companies = companies.where(["industry = ?", industry]) if industry.present?
    companies = companies.where(["headquarters LIKE ?", headquarters]) if headquarters.present?
    companies = companies.where(["size = ?", size]) if size.present?
    return companies
  end
end
