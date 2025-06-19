class AddUserIdToPatient < ActiveRecord::Migration[8.0]
  def change
    add_column :patients, :user_id, :integer
  end
end
