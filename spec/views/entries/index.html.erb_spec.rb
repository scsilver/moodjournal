require 'rails_helper'
=begin
RSpec.describe "entries/index", type: :view do
  before(:each) do
    sign_in current_user
    assign(:entries, [
      Entry.create!(
        :user_id => current_user,
        :title => "Title",
        :content => "Content"
      ),
      Entry.create!(
        :user_id => current_user,
        :title => "Title",
        :content => "Content"
      ),
       Entry.create!(
        :user_id => 2,
        :title => "Title",
        :content => "Content"
      )
    ])
  end

  it "renders a list of current user's entries" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
=end