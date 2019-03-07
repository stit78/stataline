class CreateIndicators < ActiveRecord::Migration[5.2]
  def change
    create_table :indicators do |t|
      t.string :name
      t.references :subtopic, foreign_key: true, index: true
      t.references :source, foreign_key: true, index: true

      t.timestamps null: false
    end
  end
end
