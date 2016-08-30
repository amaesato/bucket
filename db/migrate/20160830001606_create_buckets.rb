class CreateBuckets < ActiveRecord::Migration[5.0]
  def change
    create_table :buckets do |t|
      t.string :name, null: false
      t.string :theme
      t.date :complete_by
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
