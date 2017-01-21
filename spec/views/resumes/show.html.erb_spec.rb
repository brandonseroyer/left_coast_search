require 'rails_helper'

RSpec.describe "resumes/show", type: :view do
  before(:each) do
    @resume = assign(:resume, Resume.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
