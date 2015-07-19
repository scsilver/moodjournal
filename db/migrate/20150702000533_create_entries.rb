class CreateEntries < ActiveRecord::Migration
  def change
    create_table(:entries) do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.boolean :positive
      t.boolean :negative
      t.integer :intensity

      t.timestamps null: false
    end
  end
end
