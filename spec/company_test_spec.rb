require 'rspec'

RSpec.describe Company, :type => :model do
  subject { described_class.new(name: "Anything",website:"http://www.url.com", headquarters:"Anywhere",size: "50-100",founded: 1999,industry: "AnyIndustry",revenue:"5 million $",synopsis:"Good Place to work") }
  it "Valid Company Added" do
    expect(subject).to be_valid
  end
  it "Invalid. Company Name Missing" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it "Invalid. Company Website Missing" do
    subject.website = nil
    expect(subject).to_not be_valid
  end
  it "Invalid. Company Url has invalid format" do
    subject.website = "what"
    expect(subject).to_not be_valid
  end
  it "Invalid. Company Headquarters Missing" do
    subject.headquarters = nil
    expect(subject).to_not be_valid
  end
  it "Invalid. Company Size Missing" do
    subject.size = nil
    expect(subject).to_not be_valid
  end
  it "Invalid. Company Revenue Missing" do
    subject.revenue = nil
    expect(subject).to_not be_valid
  end
  it "Invalid. Company Founded Missing" do
    subject.founded = nil
    expect(subject).to_not be_valid
  end
  it "Invalid. Company Size Missing" do
    subject.industry = nil
    expect(subject).to_not be_valid
  end
  it "Invalid. Company Synopsis Missing" do
    subject.synopsis = nil
    expect(subject).to_not be_valid
  end

end

