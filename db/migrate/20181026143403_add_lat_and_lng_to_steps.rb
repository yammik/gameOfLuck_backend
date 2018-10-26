class AddLatAndLngToSteps < ActiveRecord::Migration[5.2]
  def change
    add_column :steps, :latitude, :float
    add_column :steps, :longitude, :float
  end
end
