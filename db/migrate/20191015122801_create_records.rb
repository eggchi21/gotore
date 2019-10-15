class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :weight, null: false
      t.references :user, foreign_key: true
      t.date :entry_on, null: false
      t.string :text
      t.timestamps
    end
  end
end
