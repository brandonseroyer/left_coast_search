require 'rails_helper'

RSpec.describe "applicants/edit", type: :view do
  before(:each) do
    @applicant = assign(:applicant, Applicant.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :about => "MyString"
    ))
  end

  it "renders the edit applicant form" do
    render

    assert_select "form[action=?][method=?]", applicant_path(@applicant), "post" do

      assert_select "input#applicant_first_name[name=?]", "applicant[first_name]"

      assert_select "input#applicant_last_name[name=?]", "applicant[last_name]"

      assert_select "input#applicant_email[name=?]", "applicant[email]"

      assert_select "input#applicant_phone[name=?]", "applicant[phone]"

      assert_select "input#applicant_about[name=?]", "applicant[about]"
    end
  end
end
