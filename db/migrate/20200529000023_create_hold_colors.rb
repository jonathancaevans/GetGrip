class CreateHoldColors < ActiveRecord::Migration[6.0]
  def change
    create_table :hold_colors do |t|
      t.string :colorName
      t.string :color
      t.references :gym

      t.timestamps
    end
  end
end
