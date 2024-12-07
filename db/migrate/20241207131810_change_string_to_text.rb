class ChangeStringToText < ActiveRecord::Migration[8.0]
  def change
    change_column :plants, :specificity, :text
  end
end
