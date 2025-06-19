class CreateDoctors < ActiveRecord::Migration[8.0]
  def change
    create_table :doctors do |t|
      t.string :nom
      t.string :prenom
      t.string :telephone
      t.integer :user_id
      t.string :speciality_id

      t.timestamps
    end
  end
end
