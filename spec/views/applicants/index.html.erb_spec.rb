require 'rails_helper'

RSpec.describe "applicants/index", type: :view do
  before(:each) do
    assign(:applicants, [
      Applicant.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :phone => "Phone",
        :about => "About"
      ),
      Applicant.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :phone => "Phone",
        :about => "About"
      )
    ])
  end

  it "renders a list of applicants" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "About".to_s, :count => 2
  end
end
