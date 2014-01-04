class CreateTurns < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.date :date
      t.boolean :state
      t.integer :patient_id

      t.timestamps
    end
  end
end
