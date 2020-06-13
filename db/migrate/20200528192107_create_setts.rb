class CreateSetts < ActiveRecord::Migration[6.0]
  def change
    create_table :setts do |t|
      t.references :gym, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
