class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :development
      t.boolean :warring
      t.text :mortality_distribution
    end
  end
end
