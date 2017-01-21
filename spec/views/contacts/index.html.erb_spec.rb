require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(),
      Contact.create!()
    ])
  end

  it "renders a list of contacts" do
    render
  end
end
