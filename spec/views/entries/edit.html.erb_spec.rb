require 'rails_helper'
=begin
RSpec.describe "entries/edit", type: :view do
  before(:each) do
    @entry = assign(:entry, Entry.create!(
      :title => "MyString",
      :content => "MyString"
    ))
      @entry.update!(
      :user_id => 1,
    )
  end

  it "renders the edit entry form" do
    render

    assert_select "form[action=?][method=?]", entry_path(@entry), "post" do

      assert_select "input#entry_user_id[name=?]", "entry[user_id]"

      assert_select "input#entry_title[name=?]", "entry[title]"

      assert_select "input#entry_content[name=?]", "entry[content]"
    end
  end
end
=end