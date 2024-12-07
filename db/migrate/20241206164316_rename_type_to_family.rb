class RenameTypeToFamily < ActiveRecord::Migration[8.0]
  def up
    rename_column :plants, :type, :family
  end

  def down
    rename_column :plants, :family, :type
  end
end
