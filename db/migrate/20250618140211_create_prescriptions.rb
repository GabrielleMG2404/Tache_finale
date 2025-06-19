class CreatePrescriptions < ActiveRecord::Migration[8.0]
  def change
    create_table :prescriptions do |t|
      t.integer :appointment_id
      t.date :date_prescription
      t.string :notes

      t.timestamps
    end
  end
end
