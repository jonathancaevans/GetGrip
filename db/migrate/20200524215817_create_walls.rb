class CreateWalls < ActiveRecord::Migration[6.0]
  def change
    create_table :walls do |t|
      t.string :name
      t.string :type
      t.references :gym, null: false, foreign_key: true

      t.timestamps
    end
  end
end
