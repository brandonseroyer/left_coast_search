require 'rails_helper'

RSpec.describe "applicants/new", type: :view do
  before(:each) do
    assign(:applicant, Applicant.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :about => "MyString"
    ))
  end

  it "renders new applicant form" do
    render

    assert_select "form[action=?][method=?]", applicants_path, "post" do

      assert_select "input#applicant_first_name[name=?]", "applicant[first_name]"

      assert_select "input#applicant_last_name[name=?]", "applicant[last_name]"

      assert_select "input#applicant_email[name=?]", "applicant[email]"

      assert_select "input#applicant_phone[name=?]", "applicant[phone]"

      assert_select "input#applicant_about[name=?]", "applicant[about]"
    end
  end
end
