class CreatePitches < ActiveRecord::Migration
  def change
    create_table :pitches do |t|
      t.string :headline
      t.integer :user_id
      t.text :description
      t.datetime :complete_by

      t.timestamps
    end
  end
end
