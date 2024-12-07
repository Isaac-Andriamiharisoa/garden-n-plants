class AddReferencesToPlants < ActiveRecord::Migration[8.0]
  def change
    add_column :plants, :user_id, :bigint

    add_foreign_key :plants, :users, column: :user_id
  end
end
