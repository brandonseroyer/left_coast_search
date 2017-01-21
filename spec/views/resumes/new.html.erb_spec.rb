require 'rails_helper'

RSpec.describe "resumes/new", type: :view do
  before(:each) do
    assign(:resume, Resume.new())
  end

  it "renders new resume form" do
    render

    assert_select "form[action=?][method=?]", resumes_path, "post" do
    end
  end
end
