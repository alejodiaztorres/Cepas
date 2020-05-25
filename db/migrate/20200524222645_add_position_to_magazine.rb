class AddPositionToMagazine < ActiveRecord::Migration[5.2]
  def change
    add_column :magazines, :position, :string
  end
end
