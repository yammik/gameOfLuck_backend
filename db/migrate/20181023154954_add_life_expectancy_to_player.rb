class AddLifeExpectancyToPlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :life_expectancy, :float
  end
end
