class AddOriginToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :origin, :string
  end
end
