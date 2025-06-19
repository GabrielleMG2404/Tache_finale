class CreatePatients < ActiveRecord::Migration[8.0]
  def change
    create_table :patients do |t|
      t.string :nom
      t.string :prenom
      t.date :date_naissance
      t.string :telephone

      t.timestamps
    end
  end
end
