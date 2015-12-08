class CreateInquirerClassDatabases < ActiveRecord::Migration
  def change
    create_table :inquirer_class_databases do |t|
      t.string :positive
      t.string :negative
      t.string :support
      t.string :hostile
      t.string :strong
      t.string :power
      t.string :weak
      t.string :submit
      t.string :active
      t.string :passive
      t.string :pleasure
      t.string :pain
      t.string :feel
      t.string :arousal
      t.string :emote
      t.string :virtue
      t.string :vice
      t.string :ovrst
      t.string :undrst
      t.string :academ
      t.string :doctrin
      t.string :econ
      t.string :exch
      t.string :expressive
      t.string :legal
      t.string :milit
      t.string :politic
      t.string :religion

      t.timestamps null: false
    end
  end
end
