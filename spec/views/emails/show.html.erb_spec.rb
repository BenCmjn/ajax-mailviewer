require 'rails_helper'

RSpec.describe "emails/show", type: :view do
  before(:each) do
    @email = assign(:email, Email.create!(
      :object => "Object",
      :body => "MyText",
      :read => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Object/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
