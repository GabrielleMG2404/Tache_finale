class CreateDiagnostics < ActiveRecord::Migration[8.0]
  def change
    create_table :diagnostics do |t|
      t.integer :appointment_id
      t.text :description
      t.date :date
      t.string :code_diagnostic

      t.timestamps
    end
  end
end
