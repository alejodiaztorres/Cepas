class RemoveScoreFromWine < ActiveRecord::Migration[5.2]
  def change
    remove_column :wines, :score, :boolean
  end
end
