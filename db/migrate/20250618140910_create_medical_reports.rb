class CreateMedicalReports < ActiveRecord::Migration[8.0]
  def change
    create_table :medical_reports do |t|
      t.string :patient_id
      t.text :description
      t.date :date

      t.timestamps
    end
  end
end
