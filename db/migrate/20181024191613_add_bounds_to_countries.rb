class AddBoundsToCountries < ActiveRecord::Migration[5.2]
  def change
    add_column :countries, :bounds, :text
  end
end
