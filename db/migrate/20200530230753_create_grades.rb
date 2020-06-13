class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.integer :difficulty
      t.string :label
      t.string :color
      t.references :system, null: false, foreign_key: true

      t.timestamps
    end
  end
end
