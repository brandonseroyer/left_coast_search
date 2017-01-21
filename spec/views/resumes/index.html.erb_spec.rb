require 'rails_helper'

RSpec.describe "resumes/index", type: :view do
  before(:each) do
    assign(:resumes, [
      Resume.create!(),
      Resume.create!()
    ])
  end

  it "renders a list of resumes" do
    render
  end
end
