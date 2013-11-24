class AddArtAndStatusToPitches < ActiveRecord::Migration
  def change
    add_column :pitches, :art, :text
    add_column :pitches, :status, :string
  end
end
