class CreateGradingsystems < ActiveRecord::Migration[6.0]
  def change
    create_table :systems do |t|
      t.string :name
      t.references :gym, null: false, foreign_key: true

      t.timestamps
    end
  end
end
