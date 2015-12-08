require 'rails_helper'

RSpec.describe "inquirer_class_databases/index", type: :view do
  before(:each) do
    assign(:inquirer_class_databases, [
      InquirerClassDatabase.create!(
        :positive => "Positive",
        :negative => "Negative",
        :support => "Support",
        :hostile => "Hostile",
        :strong => "Strong",
        :power => "Power",
        :weak => "Weak",
        :submit => "Submit",
        :active => "Active",
        :passive => "Passive",
        :pleasure => "Pleasure",
        :pain => "Pain",
        :feel => "Feel",
        :arousal => "Arousal",
        :emote => "Emote",
        :virtue => "Virtue",
        :vice => "Vice",
        :ovrst => "Ovrst",
        :undrst => "Undrst",
        :academ => "Academ",
        :doctrin => "Doctrin",
        :econ => "Econ",
        :exch => "Exch",
        :expressive => "Expressive",
        :legal => "Legal",
        :milit => "Milit",
        :politic => "Politic",
        :religion => "Religion"
      ),
      InquirerClassDatabase.create!(
        :positive => "Positive",
        :negative => "Negative",
        :support => "Support",
        :hostile => "Hostile",
        :strong => "Strong",
        :power => "Power",
        :weak => "Weak",
        :submit => "Submit",
        :active => "Active",
        :passive => "Passive",
        :pleasure => "Pleasure",
        :pain => "Pain",
        :feel => "Feel",
        :arousal => "Arousal",
        :emote => "Emote",
        :virtue => "Virtue",
        :vice => "Vice",
        :ovrst => "Ovrst",
        :undrst => "Undrst",
        :academ => "Academ",
        :doctrin => "Doctrin",
        :econ => "Econ",
        :exch => "Exch",
        :expressive => "Expressive",
        :legal => "Legal",
        :milit => "Milit",
        :politic => "Politic",
        :religion => "Religion"
      )
    ])
  end

  it "renders a list of inquirer_class_databases" do
    render
    assert_select "tr>td", :text => "Positive".to_s, :count => 2
    assert_select "tr>td", :text => "Negative".to_s, :count => 2
    assert_select "tr>td", :text => "Support".to_s, :count => 2
    assert_select "tr>td", :text => "Hostile".to_s, :count => 2
    assert_select "tr>td", :text => "Strong".to_s, :count => 2
    assert_select "tr>td", :text => "Power".to_s, :count => 2
    assert_select "tr>td", :text => "Weak".to_s, :count => 2
    assert_select "tr>td", :text => "Submit".to_s, :count => 2
    assert_select "tr>td", :text => "Active".to_s, :count => 2
    assert_select "tr>td", :text => "Passive".to_s, :count => 2
    assert_select "tr>td", :text => "Pleasure".to_s, :count => 2
    assert_select "tr>td", :text => "Pain".to_s, :count => 2
    assert_select "tr>td", :text => "Feel".to_s, :count => 2
    assert_select "tr>td", :text => "Arousal".to_s, :count => 2
    assert_select "tr>td", :text => "Emote".to_s, :count => 2
    assert_select "tr>td", :text => "Virtue".to_s, :count => 2
    assert_select "tr>td", :text => "Vice".to_s, :count => 2
    assert_select "tr>td", :text => "Ovrst".to_s, :count => 2
    assert_select "tr>td", :text => "Undrst".to_s, :count => 2
    assert_select "tr>td", :text => "Academ".to_s, :count => 2
    assert_select "tr>td", :text => "Doctrin".to_s, :count => 2
    assert_select "tr>td", :text => "Econ".to_s, :count => 2
    assert_select "tr>td", :text => "Exch".to_s, :count => 2
    assert_select "tr>td", :text => "Expressive".to_s, :count => 2
    assert_select "tr>td", :text => "Legal".to_s, :count => 2
    assert_select "tr>td", :text => "Milit".to_s, :count => 2
    assert_select "tr>td", :text => "Politic".to_s, :count => 2
    assert_select "tr>td", :text => "Religion".to_s, :count => 2
  end
end
