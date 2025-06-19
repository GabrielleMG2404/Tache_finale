class CreateAppointments < ActiveRecord::Migration[8.0]
  def change
    create_table :appointments do |t|
      t.string :patient_id
      t.string :doctor_id
      t.date :date
      t.text :statut

      t.timestamps
    end
  end
end
