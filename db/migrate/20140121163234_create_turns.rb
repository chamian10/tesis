class CreateTurns < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.date :date
      t.time :time
      t.string :name
      t.references :patient, index: true

      t.timestamps
    end
  end
end
