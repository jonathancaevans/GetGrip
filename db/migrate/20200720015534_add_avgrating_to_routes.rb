class AddAvgratingToRoutes < ActiveRecord::Migration[6.0]
  def change
    add_column :routes, :avgrating, :integer
  end
end
