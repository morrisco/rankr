class CreateOutcomes < ActiveRecord::Migration
  def change
    create_table :outcomes do |t|
      t.string :winner
      t.string :loser

      t.timestamps
    end
  end
end
