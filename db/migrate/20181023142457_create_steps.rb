class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.integer :step_count
      t.integer :player_id
      t.integer :country_id
    end
  end
end
