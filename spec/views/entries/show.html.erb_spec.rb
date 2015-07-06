require 'rails_helper'
=begin
RSpec.describe "entries/show", type: :view do
  before(:each) do
        sign_in current_user
    @entry = assign(:entry, Entry.create!(
      :title => "Title",
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/current_user.id/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Content/)
  end
end
=end