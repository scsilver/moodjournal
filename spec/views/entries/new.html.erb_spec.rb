require 'rails_helper'
=begin
RSpec.describe "entries/new", type: :view do
  before(:each) do
    assign(:entry, Entry.new(
      :user_id => 1,
      :title => "MyString",
      :content => "MyString"
    ))
  end

  it "renders new entry form" do
    render

    assert_select "form[action=?][method=?]", entries_path, "post" do

      assert_select "input#entry_user_id[name=?]", "entry[user_id]"

      assert_select "input#entry_title[name=?]", "entry[title]"

      assert_select "input#entry_content[name=?]", "entry[content]"
    end
  end
end
=end