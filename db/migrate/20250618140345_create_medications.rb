class CreateMedications < ActiveRecord::Migration[8.0]
  def change
    create_table :medications do |t|
      t.string :nom
      t.string :dosage
      t.string :frequence
      t.string :prescription_id

      t.timestamps
    end
  end
end
