class CreateRoutes < ActiveRecord::Migration[6.0]
  def change
    create_table :routes do |t|
      t.string :hold_color
      t.string :setters
      t.integer :is_set
      t.references :sett, null: false, foreign_key: true
      t.references :wall, null: false, foreign_key: true
      t.references :gym, foreign_key: true
      t.references :grade, foreign_key: true

      t.timestamps
    end
  end
end
 