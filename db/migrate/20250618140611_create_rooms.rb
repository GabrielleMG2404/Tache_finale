class CreateRooms < ActiveRecord::Migration[8.0]
  def change
    create_table :rooms do |t|
      t.string :numero_chambre
      t.integer :etage
      t.text :nom 

      t.timestamps
    end
  end
end
