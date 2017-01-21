require 'rails_helper'

RSpec.describe "resumes/edit", type: :view do
  before(:each) do
    @resume = assign(:resume, Resume.create!())
  end

  it "renders the edit resume form" do
    render

    assert_select "form[action=?][method=?]", resume_path(@resume), "post" do
    end
  end
end
