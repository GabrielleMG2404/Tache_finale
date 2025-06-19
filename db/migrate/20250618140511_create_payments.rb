class CreatePayments < ActiveRecord::Migration[8.0]
  def change
    create_table :payments do |t|
      t.integer :appointment_id
      t.integer :prix
      t.string :paiement_method

      t.timestamps
    end
  end
end
