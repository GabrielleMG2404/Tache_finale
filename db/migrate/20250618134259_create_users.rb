class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :mot_de_passe
      t.text :role

      t.timestamps
    end
  end
end
