require 'rails_helper'

RSpec.describe "applicants/show", type: :view do
  before(:each) do
    @applicant = assign(:applicant, Applicant.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :phone => "Phone",
      :about => "About"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/About/)
  end
end
