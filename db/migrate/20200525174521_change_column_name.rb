class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
	rename_column :walls, :type, :wall_type
  end
end
