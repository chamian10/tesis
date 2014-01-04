class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :lastname
      t.boolean :gender
      t.integer :age
      t.string :dni
      t.string :address
      t.string :photo

      t.timestamps
    end
  end
end
