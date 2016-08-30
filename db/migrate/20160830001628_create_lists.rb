class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :name, null: false
      t.string :notes
      t.belongs_to :bucket, foreign_key: true

      t.timestamps
    end
  end
end
