require 'rails_helper'

RSpec.describe "inquirer_class_databases/show", type: :view do
  before(:each) do
    @inquirer_class_database = assign(:inquirer_class_database, InquirerClassDatabase.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Positive/)
    expect(rendered).to match(/Negative/)
    expect(rendered).to match(/Support/)
    expect(rendered).to match(/Hostile/)
    expect(rendered).to match(/Strong/)
    expect(rendered).to match(/Power/)
    expect(rendered).to match(/Weak/)
    expect(rendered).to match(/Submit/)
    expect(rendered).to match(/Active/)
    expect(rendered).to match(/Passive/)
    expect(rendered).to match(/Pleasure/)
    expect(rendered).to match(/Pain/)
    expect(rendered).to match(/Feel/)
    expect(rendered).to match(/Arousal/)
    expect(rendered).to match(/Emote/)
    expect(rendered).to match(/Virtue/)
    expect(rendered).to match(/Vice/)
    expect(rendered).to match(/Ovrst/)
    expect(rendered).to match(/Undrst/)
    expect(rendered).to match(/Academ/)
    expect(rendered).to match(/Doctrin/)
    expect(rendered).to match(/Econ/)
    expect(rendered).to match(/Exch/)
    expect(rendered).to match(/Expressive/)
    expect(rendered).to match(/Legal/)
    expect(rendered).to match(/Milit/)
    expect(rendered).to match(/Politic/)
    expect(rendered).to match(/Religion/)
  end
end
