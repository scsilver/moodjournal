require 'rails_helper'

RSpec.describe "inquirer_class_databases/new", type: :view do
  before(:each) do
    assign(:inquirer_class_database, InquirerClassDatabase.new(
      :positive => "MyString",
      :negative => "MyString",
      :support => "MyString",
      :hostile => "MyString",
      :strong => "MyString",
      :power => "MyString",
      :weak => "MyString",
      :submit => "MyString",
      :active => "MyString",
      :passive => "MyString",
      :pleasure => "MyString",
      :pain => "MyString",
      :feel => "MyString",
      :arousal => "MyString",
      :emote => "MyString",
      :virtue => "MyString",
      :vice => "MyString",
      :ovrst => "MyString",
      :undrst => "MyString",
      :academ => "MyString",
      :doctrin => "MyString",
      :econ => "MyString",
      :exch => "MyString",
      :expressive => "MyString",
      :legal => "MyString",
      :milit => "MyString",
      :politic => "MyString",
      :religion => "MyString"
    ))
  end

  it "renders new inquirer_class_database form" do
    render

    assert_select "form[action=?][method=?]", inquirer_class_databases_path, "post" do

      assert_select "input#inquirer_class_database_positive[name=?]", "inquirer_class_database[positive]"

      assert_select "input#inquirer_class_database_negative[name=?]", "inquirer_class_database[negative]"

      assert_select "input#inquirer_class_database_support[name=?]", "inquirer_class_database[support]"

      assert_select "input#inquirer_class_database_hostile[name=?]", "inquirer_class_database[hostile]"

      assert_select "input#inquirer_class_database_strong[name=?]", "inquirer_class_database[strong]"

      assert_select "input#inquirer_class_database_power[name=?]", "inquirer_class_database[power]"

      assert_select "input#inquirer_class_database_weak[name=?]", "inquirer_class_database[weak]"

      assert_select "input#inquirer_class_database_submit[name=?]", "inquirer_class_database[submit]"

      assert_select "input#inquirer_class_database_active[name=?]", "inquirer_class_database[active]"

      assert_select "input#inquirer_class_database_passive[name=?]", "inquirer_class_database[passive]"

      assert_select "input#inquirer_class_database_pleasure[name=?]", "inquirer_class_database[pleasure]"

      assert_select "input#inquirer_class_database_pain[name=?]", "inquirer_class_database[pain]"

      assert_select "input#inquirer_class_database_feel[name=?]", "inquirer_class_database[feel]"

      assert_select "input#inquirer_class_database_arousal[name=?]", "inquirer_class_database[arousal]"

      assert_select "input#inquirer_class_database_emote[name=?]", "inquirer_class_database[emote]"

      assert_select "input#inquirer_class_database_virtue[name=?]", "inquirer_class_database[virtue]"

      assert_select "input#inquirer_class_database_vice[name=?]", "inquirer_class_database[vice]"

      assert_select "input#inquirer_class_database_ovrst[name=?]", "inquirer_class_database[ovrst]"

      assert_select "input#inquirer_class_database_undrst[name=?]", "inquirer_class_database[undrst]"

      assert_select "input#inquirer_class_database_academ[name=?]", "inquirer_class_database[academ]"

      assert_select "input#inquirer_class_database_doctrin[name=?]", "inquirer_class_database[doctrin]"

      assert_select "input#inquirer_class_database_econ[name=?]", "inquirer_class_database[econ]"

      assert_select "input#inquirer_class_database_exch[name=?]", "inquirer_class_database[exch]"

      assert_select "input#inquirer_class_database_expressive[name=?]", "inquirer_class_database[expressive]"

      assert_select "input#inquirer_class_database_legal[name=?]", "inquirer_class_database[legal]"

      assert_select "input#inquirer_class_database_milit[name=?]", "inquirer_class_database[milit]"

      assert_select "input#inquirer_class_database_politic[name=?]", "inquirer_class_database[politic]"

      assert_select "input#inquirer_class_database_religion[name=?]", "inquirer_class_database[religion]"
    end
  end
end
