class CreateRoutesetters < ActiveRecord::Migration[6.0]
  def change
    create_table :routesetters do |t|
      t.references :user, null: false, foreign_key: true
      t.references :gym, null: false, foreign_key: true
      t.timestamps
    end
  end
end
