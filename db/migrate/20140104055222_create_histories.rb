class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.decimal :height
      t.decimal :current_weight
      t.decimal :customary_weight
      t.decimal :circumference
      t.string :activity
      t.string :degree_of_stress
      t.string :pathology
      t.text :observation
      t.string :nutrition_diagnosis
      t.integer :patient_id

      t.timestamps
    end
  end
end
